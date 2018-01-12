class Patient(Hospital):
    def __init__(self, id, name, allergies, bed_number=None):
        self.id = id
        self.name = name
        self.allergies = allergies
        self.bed_number += 1

        self.temp = temp.fromkeys(self.id, self.name, self.allergies, self.bed_number)

class Hospital(object):

    self.patients = []
    self.name = "Kaiser"
    self.capacity = 5

    def admit():
        if (capacity >= len(patients)):
            discharge()


    def discharge():
        print "The Hospital is full.. sorry!!"

person1 = Patient(1, "john", "none")

person1.admit()
