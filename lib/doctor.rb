class Doctor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |appt_instance| appt_instance.doctor == self }
    end

    def new_appointment(new_patient, date)
        Appointment.new(date, new_patient, self)
    end

    def patients
        self.appointments.map {|appt_instance| appt_instance.patient } 
    end

end

