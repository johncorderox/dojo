class MathDojo(object):

    def __init__(self):
        self.total = 0
    def add(self, val, *vals):
        if (type(val) == int):
            self.total += val
        if (type(vals)== int):
            self.total += sum(vals)
        if (type(val) == list):
            self.total += sum(val)
        if (type(vals)== list):
            self.total += sum(vals)
        print self.total
        return self
    def subtract(self, val, *vals):
        self.total -= val
        if(vals):
            self.total -= sum(vals)
        print self.total


md = MathDojo()
#md.add(2).add(2,5).subtract(3,2)
md.add([1], 3,4).add([3,5,7,8], [2,4.3,1.25])
