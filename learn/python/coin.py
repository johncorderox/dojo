## HEADS == 1
## TAILS == 0

import random

def coin():
    heads = 0
    tails = 0
    for x in range(1, 5001):
        rand = random.randint(0,1)
        if (rand == 0):
            tails += 1
            print "Attempt #", x , ": Throwing a coin. . . It's a tail!.... Got ", heads, " heads and ", tails, " tails so far"
        else:
            heads += 1
            print "Attempt #", x , ": Throwing a coin. . . It's a head!.... Got ", heads, " heads and ", tails, " tails so far"

coin()
