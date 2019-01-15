class Dog

def initialize(breed)
  @breed = breed
end

def speak
  puts "bark bark"
end

def walk
  puts "Chewy the #{@breed} is walking!"
end

def breed
  puts @breed
end




end


chewy = Dog.new("chihuahua")
chewy.speak
chewy.walk
chewy.breed
