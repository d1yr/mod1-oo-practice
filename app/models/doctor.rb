require 'pry'


class Doctor
    attr_reader :speciality
    attr_accessor :name, :years
    @@all = []
    def initialize(name, speciality, years=1)
        @name = name
        @specialty = speciality
        @years = years
        @@all << self
    end
    
    def greet
        puts "Hello! Welcome back, please have a seat and your Doctor will be right with you!"
    end

    def self.find_by_speciality(query)
        self.all.filter {|doc| doc.specialty == query} ##solution we factored down in slack w/ ryan, kain, and anson
    end
end

binding.pry
#Doctor.all: should return a list of all doctor instances
#Doctor#greet: should print a greeting that would make any patient feel welcomed!
#Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 