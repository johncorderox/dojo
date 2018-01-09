def show(val):
    count = 0
    for x,y in val.iteritems():
        print x , " = ", y



show({"name": "John", "age": 24, "birth":"United States", "language": "Python"})
