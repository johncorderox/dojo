a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

i = 0
count = 0
for i in 0..names.length - 1
  count += 1
end
puts "You have #{count} in the names array"

for i in names
  puts "the name is #{i[:first_name]} #{i[:last_name]}"
end
