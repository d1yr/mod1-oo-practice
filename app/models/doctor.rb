require 'pry'






class Doctor
    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []
    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end
    def greet
        puts "Hello! Welcome back, please have a seat and your Doctor will be right with you!"
    end
    def self.find_by_specialty(query)
        self.all.filter {|doctor| doctor.specialty == query} ##solution we factored down in slack w/ ryan, kain, and anson
    end

    def self.all
        @@all
    end

    def patients
        Patient.all.select {|patient| patient.doctor == self}
    end

    def discharge_patient(patient)
        self.patients.each do |check_patient|
            patient.doctor = nil if patient == check_patient
        end
    end

    def transfer_patient(patient, doctor)
        self.patients.each do |check_patient|
            patient.doctor = doctor if patient == check_patient
        end
    end
end

#Doctor.all: should return a list of all doctor instances
#Doctor#greet: should print a greeting that would make any patient feel welcomed!
#Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 