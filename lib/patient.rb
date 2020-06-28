class Patient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def appointments
        Appointment.all.select { |appt_instance| appt_instance.patient == self}
    end

    def new_appointment(new_doc, new_date)
        Appointment.new(new_date, self, new_doc)
    end

    def doctors
        self.appointments.map { |appt_instance| appt_instance.doctor }
    end
    def self.all
        @@all
    end
end