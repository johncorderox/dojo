module MyEnumerable
  def my_each
    print self
  end
end
class Array
  include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i }
