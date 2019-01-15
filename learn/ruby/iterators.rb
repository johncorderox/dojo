# .any? tested for true
["john","john","john","john"].any? { |word| word.length == 3 }

# each
["john","cordero","loves","rails"].each { |word| print word + "<3"}

# find returns first result which returns true
(1..100).detect{ |test| test == 5 }
