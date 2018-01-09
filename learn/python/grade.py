import random

x = 0
print "Scores and Grades"
print "----------------------"
while ( x != 10):
        grade = ''
        r_num = random.randint(60, 100)
        if(r_num > 60 and r_num < 69):
            grade = 'D'
            print "Score :" ,r_num , ";", "Your grade is " , grade
            x = x + 1
        elif(r_num > 70 and r_num < 79):
            grade = 'C'
            print "Score :" ,r_num , ";", "Your grade is " , grade
            x = x + 1
        elif ( r_num > 80 and r_num < 89):
            grade = 'B'
            print "Score :" ,r_num , ";", "Your grade is " , grade
            x = x + 1
        elif (r_num > 90 and r_num < 100):
            grade = 'A'
            print "Score :" ,r_num , ";", "Your grade is " , grade
            x = x + 1
