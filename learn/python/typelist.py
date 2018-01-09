
c = ['magical','unicorns']
a = ['magical unicorns',19,'hello',98.98,'world']
b = [2,3,1,7,4,12]

def typelist(val):

 if ( all(isinstance(x, int) for x in val)):

     print "List is of INTEGER"
     print "sum is ", sum(val)


 elif all(isinstance(x, str) for x in val):

     print "List is of STRING"
     print ' '.join(val)

 else:
     print "-------------"
     print "The list you entered is of a mixed type"
     total = 0
     newarr = []
     for x in val:
        if(isinstance(x, int)):
            total += x
            print "@@@ The total is ", total
        else:
            newarr.append(x)
            print "String ", x



typelist(a)
typelist(b)
typelist(c)
