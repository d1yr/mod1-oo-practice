require 'pry'


doctors = [
    {:name => "Dr. Pepper", :specialty => "Neurology", :years => 10},
    {:name => "Mr. Pibb", :specialty => "Cardiology", :years => 5},
    {:name => "Dr. Dre", :specialty => "Neurology", :years => 8},
    {:name => "Dr. Doolittle", :specialty => "Dentistry", :years => 3}
]

patients = [
    {:name => "Steve" , :age => 25 },
    {:name => "Isabel" , :age => 46 },
    {:name => "Theodore" , :age => 31 }, 
    {:name => "Tessier" , :age => 64 },
    {:name => "Ashpool" , :age => 22 },
    {:name => "Aaron" , :age => 25 },
    {:name => "Marilyn" , :age => 47 }, 
    {:name => "Judith" , :age => 39 }
]

doctors.each { |doctor| Doctor.new(doctor[:name], doctor[:specialty], doctor[:years]) }
patients.each { |patient| Patient.new(patient[:name], patient[:age])}

