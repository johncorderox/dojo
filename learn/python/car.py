class Car(object):
    def __init__(self, price, speed, fuel, mileage):

        self.price = price
        self.speed = speed
        self.fuel = fuel
        self.mileage = mileage
        self.tax = 0

        if ( price > 10000):
            self.tax = 0.15
        else:
            self.tax = 0.12
        print "Price :", self.price
        print "Speed :", self.speed , "mph"
        print "Mileage :", self.mileage, "mpg"
        print "Tax :" , self.tax


a = Car(2000, 35, "Full", 15)
b = Car(2000, 5, "Not Full", 105)
c = Car(2000, 15, "Kind of Full", 95)
d = Car(2000, 25, "Full", 25)
e = Car(2000, 45, "Empty", 25)
f = Car(2000000, 35, "Empty", 15)
