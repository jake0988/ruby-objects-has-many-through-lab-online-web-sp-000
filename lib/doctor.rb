class Doctor
attr_accessor :name, :patient, :list
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    a = Appointment.new(date, patient, self)
    a.doctor = self
    a
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

    def patients
      list = []
      appointments.collect do |appointment|
          list << appointment.patient
    end
      list
  end

end
