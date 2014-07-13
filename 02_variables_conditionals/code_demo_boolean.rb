#Boolean - Student's File
#Let the computer do the work for you!

puts "Is 7 greater than 8?"
  puts 7 > 8 

puts "Is 8 x 77 greater than 600?"
  result = 8 * 77
  puts result > 600

puts "Is 1 equal to (7 - 6)?"
  result = 7 - 6
  puts 1 == result

puts "Is 77 greater than 50 AND (88 / 3) less than 30?"
  left = 77 > 50
  right = (88/3) < 30
  puts left && right

puts "Is the length of the word 'wheelbarrow' more than 10 characters long?"
  l = 'wheelbarrow'.size 
  puts l > 10

puts "Are the amount of seconds in an hour greater than or equal to 3000?"
  seconds_in_hour = 60 * 60 
  puts seconds_in_hour >= 3000

puts "Does the word 'slaughter' include the word laughter?"
  puts 'slaughter'.include?('laughter')
