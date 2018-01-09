from types import *

def valueCheck(val):

    if type(val) is IntType:

        if (val >= 100):
            print "Thats a big Number!"
        else:
            print "Thats a small Number"

def stringCheck(val):

    if type(val) is StringType:

        if ( len(val) >= 50):
            print "Long Sentenace"
        else:
            print "Short Sentenace"



sI = 45
mI = 100
bI = 455
eI = 0
spI = -23

valueCheck(sI)
valueCheck(mI)
valueCheck(bI)
valueCheck(eI)
valueCheck(spI)


sS = "Rubber baby buggy bumpers"
mS = "Experience is simply the name we give our mistakes"
bS = "Tell me and I forget. Teach me and I remember. Involve me and I learn."
eS = ""

stringCheck(sS)
stringCheck(mS)
stringCheck(bS)
stringCheck(eS)


aL = [1,7,4,21]
mL = [3,5,7,34,3,2,113,65,8,89]
lL = [4,34,22,68,9,13,3,5,7,9,2,12,45,923]
eL = []
spL = ['name','address','phone number','social security number']

def checkList(val):

    if type(val) is ListType:

        if ( len(val) > 10):
            print "Big List"
        else:
            print "small List"

checkList(aL)
checkList(mL)
checkList(lL)
checkList(eL)
checkList(spL)
