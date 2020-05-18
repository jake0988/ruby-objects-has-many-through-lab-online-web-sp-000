
require 'pry'
class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    a = Appointment.new(date, self, doctor)
    a.patient = self
    a
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.collect do |appointment|
      if appointment.patient == self
      appointment
    end
    end
  end

    def doctors
      appointments.map do |appointment|
        appointment.doctor

      end
    end
  end
