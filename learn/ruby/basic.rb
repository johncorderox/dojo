#1-255

#
# for i in 1..255
#   puts i
# end
#
#1-255 odd

# for i in 1..255
#   puts i if i % 2 != 0
# end

#print sum
# sum = 0
# x = 0
# for i in 0..255
#   x += i
#   puts "new Number #{i} Sum #{x}"
# end

#iterate array
# x = [1,2,3,4,5,6,7,8,9,10]
# x.each{ |x| puts x}

#find max

# max = 0
# arr = [1,2,3,4,5,998]
# puts "Max = #{arr.max}"

#average
#add all then divide by length
# sum = 0
# arr = [1,2,3,4,5,998]
# arr.each { |x| sum += x}
# # puts sum / arr.length
# arr = []
# #
# for i in 0..255
#   arr.push(i)
# end
# print arr
#greater than y

# def check arr, y
#   count = 0
#   arr.each { |x| count += 1 if x > y}
#   puts count
# end
# check [1,2,3,4,5], 4

#square values
# array = [1,5,10,-2]
#
# array.each { |x| x * x if x > 0}
# print array

#eliminate negatives
# arr = [1,2,3,-4]
# i = 0
# for i in 0..4
#   if 0 >= arr[i]
#     arr[i] = 0
#   end
# end
# print array
#
# x = [1,5,10,-2]
# max = x.max
# min = x.min
# sum = 0
# x.each {|a| sum += a}
# avg = sum / x.length
#
# average = Hash["max" => max, "min" => min, "av" => avg]
# puts "#{average}"

#shift array

# arr = [1,5,10,7,-2]
# i = 0
# for i in 0..arr.length - 1
#   arr[i] = arr[0 + i]
# end
# arr[arr.length-1] = 0
# print arr

# arr = [-1,-3, 2]
# i = 0
#
# for i in 0..arr.length - 1
#   if arr[i] < 0
#     arr[i] = "Dojo"
#   end
# end
# print arr
