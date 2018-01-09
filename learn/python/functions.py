def odd_even():
    for x in range(1,2001):
        if ( x % 2 == 0):
         print "Number is", x, "This is an even number"
        else:
         print "Number is", x, "This is an odd number"


def multiply(val):
    for x in val:
        print x * 5




odd_even()
multiply([2,4,10,16])
