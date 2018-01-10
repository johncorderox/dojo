class Animal():
    def __init__(self, name, health):
        self.name = name
        self.health = health
    def walk(self):
        self.health -= 1
        return self
    def run(self):
        self.health -= 5
        return self
    def display_health(self):
        print "My health is {}".format(self.health)

first_animal = Animal("Dog", 50)
first_animal.walk().walk().walk().run().run().display_health()

class Dog(Animal):
    def __init__(self, health=0):
        self.health = 150
    def pet(self):
        self.health += 5
        return self

class Dragon(Animal):
    def __init__(self, health=0):
        self.health = 170
    def fly(self):
        self.health -= 10
        return self
    def display_health():
        super(Dragon, self).display_health()
        print "I am a Dragon"


new_dog = Dog()
new_dog.walk().walk().walk().run().run().run().pet().display_health()

puff = Dragon()
puff.display_health()

# new animal and confirm that it cannot call pet and fly
#
# bird = Animal("birdy", 500)
# bird.pet().fly().display_health()
