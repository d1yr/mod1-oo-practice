require 'pry'

class Patient
    attr_reader :impatience
    attr_accessor :name, :age
    @@all = []
    def initialize(name, age, impatience=0)
        @name = name
        @age = specialty
        @impatience = impatience
        @@all << self
    end

    def inquire_appt_ready
        puts "Your doctor will be seeing you soon!"
        @impatience -= 1
    end
    end
    
    def self.all
        @@all
    end
    
    private
    def increase_impatience
        @impatience += 1
    end
    end

end

binding.pry

#Patients should be initialized with an instance variable, impatience, set to 0
#Patient#increase_impatience: should be a private method that increases impatience by 1 
#Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1
#Patient.all: should return a list of all patient instances