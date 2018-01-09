for x in range(100,100000):
    if ( x % 2 != 0):
        print "Foo"
    if ((x * x) % 2 == 0):
        print "Bar"
    else:
        print "FooBar"
