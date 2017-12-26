class Person:


    def __init__ (self, name, age):

        self.name = name
        self.age  = age


    def showInfo(self):

        print 'Your name is ', self.name
        print 'Your age is ', self.age


    def changeName(self, name):

        self.name = name
        print self.name

        

john = Person("John", 23)
john.showInfo()

john.changeName("mary")

jr = Person("Jr", 25)
jr.showInfo()
jr.changeName("megadolan")
