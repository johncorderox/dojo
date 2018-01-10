class Products(object):
    def __init__(self, price, item_name, weight, brand, status=""):
        self.price = price
        self.item_name = item_name
        self.weight = weight
        self.brand = brand
        self.status = "for sale"

    def sell(self):
        self.status = "sold"
    def add_tax(self, tax):
        self.price = self.price * tax
    def return_item(self, return_reason):
        if (return_reason == "defective"):
            self.status = "defective"
            self.price = 0
        if (return_reason =="box_like_new"):
            self.status = "for sale"
        if (return_reason == "box_opened"):
            self.status = "used"
            self.price = self.price - (0.20 * self.price)
    def display_info(self):
        print "Price is {}".format(self.price)
        print "Item name is {}".format(self.item_name)
        print "weight is {}".format(self.weight)
        print "Brand is {}".format(self.brand)
        print "The status is {}".format(self.status)



phone = Products(1000, "iphone8", "3lbs", "Apple")
phone.display_info()
phone.sell()
phone.display_info()
phone.return_item("box_like_new")
phone.display_info()
