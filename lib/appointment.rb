class Appointment
    attr_reader :patient, :doctor
    attr_accessor :date

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self

    end

    def self.all
        @@all
    end

end