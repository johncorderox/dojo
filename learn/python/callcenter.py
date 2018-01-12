class Class(object):
    def __init__(self, unique_id, caller_name, caller_phone_number, time_of_call, reason_for_call):
        self.unique_id = unique_id
        self.caller_name = caller_name
        self.caller_phone_number = caller_phone_number
        self.time_of_call = time_of_call
        self.reason_for_call = reason_for_call
    def display(self):
        print "Unique ID: {}".format(self.unique_id)
        print "Caller Name: {}".format(self.caller_name)
        print "Caller Phone # {}".format(self.caller_phone_number)
        print "Time of call?: {}".format(self.time_of_call)
        print "Reason for call?: {}".format(self.reason_for_call)

class CallCenter(Class):
    def __init__(self, calls):
        self.calls = {}
        self.queue_size = len(self.calls)
    def add(self, call):
        self.calls.append(call)
        return self
    def remove(self, remove_call):
        self.calls.pop(0)
        return self

call1 = Class(1, "john cordero", 3235285323, 0500, "complaint")
call1 = CallCenter(call1)
call1.display()
