class Doctor
    attr_reader :specialty
    attr_accessor :name, :years
    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
    end
end