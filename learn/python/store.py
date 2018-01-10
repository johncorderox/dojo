class Store(object):
    def __init__(self, products, location, owner):
        self.products = []
        self.location = location
        self.owner = owner
    def add_product(self, item):
        self.products.append(item)
        print "Added {} to the list".format(item)
    def remove_product(self, item):
        self.products.remove(item)
        print "Removed item {}".format(item)
    def inventory(self):
        for x in self.products:
            print x

phones = Store("tablets", "Los Angeles", "John Cordero")
phones.add_product("charger")
phones.add_product("phones")
phones.add_product("tea bags")
phones.inventory()
phones.remove_product("tea bags")
phones.inventory()
