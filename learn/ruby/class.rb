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

def self.what_am_i
  "Im a good dog!"
end



end


chewy = Dog.new("chihuahua")
chewy.speak
chewy.walk
chewy.breed
chewy.what_am_i


#Class Methods = we can call directly without instantiating new objects
