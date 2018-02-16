x = {:first_name => "John", :last_name =>"Cordero"}
puts x

x.delete("first_name")
# if x.has_key?(:first_name)
#if x.has_value("Dojo")

if x.has_key?(:last_name)
  print "PASS"
if x.has_value?("Cordero")
  print "PASS"
end
end
