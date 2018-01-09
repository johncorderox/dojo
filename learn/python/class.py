class Bike(object):
    def __init__(self, price, max_speed, miles = 0):
        self.price = price
        self.max_speed = max_speed
        self.miles = 0;


    def displayInfo(self):

        print self.price, self.max_speed, self.miles

    def ride(self):

        print "Riding...."
        self.miles += 10

    def reverse(self):

        print "Reversing...."
        self.miles -= 5


john = Bike(200, 25)
john.displayInfo()
john.ride()
john.ride()
john.ride()
john.reverse()
john.displayInfo()

jr = Bike(200,25)
jr.ride()
jr.ride()
jr.reverse()
jr.reverse()
jr.displayInfo()

sonia = Bike(200,25)
sonia.reverse()
sonia.reverse()
sonia.reverse()
sonia.displayInfo()
