class MathDojo

def initialize
  @total = 0
end
def add(*arguments)
    a = arguments.flatten
    @total += a.reduce(:+)
    self
end

def subtract(*arguments)
    a = arguments.flatten
    @total -= a.reduce(:+)
    self
end

def result
  puts "#{@total}"
end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
