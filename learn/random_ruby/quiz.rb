def guess_number guess
  number = 20
  if number > guess
    puts "Too Low"
  elsif number < guess
    puts "Too High"
  elsif number == guess
    puts "You got it"
  else
    puts "Error"
 end
end
guess_number 20
