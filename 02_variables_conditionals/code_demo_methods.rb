#Code Demo Methods: Student's File
#TIME: ~ 45 min



#1 - Let's say we wanted to perform the task of multiplying 22 by 44  
###########
###########

  puts 22 * 44
	
#2 - Great, what if we wanted to multiply 22*4 again. If we had to type that out each time, it would be inefficient
# So, let's try and save that code to a method...
###########
###########

def twenty_two_times_fourty_four
  22*44
end



# NOTE: Running this does not return 968! How come?


##3 - Let's call that method, by simply typing out its name:
###########
###########

puts twenty_two_times_fourty_four


##4 - Now, let's say we wanted to make it a little smarter. Our  method will take two parameters passed to it.
# Let's name the parameters as variables x and y
# and then multiply them together.
###########
###########

def multiply(x,y)
  return x * y
end



#5 - Now CALL that method:
###########
###########
puts multiply(22, 44)


#6 - Other People's methods. Two of the most common methods we will use throughout this class are puts and gets.
# Let's start with puts...
###########
###########

puts "actually we've been using it quite a lot!"


#7 - One more thing! - When you are calling a method with parameters, using the parenthesis () is OPTIONAL
###########
###########

puts('you can do it like this too!')


#8 - Now, let's look at gets
###########
###########

puts "type some stuff"
user_input = gets
puts user_input


#9 - So far, we have only been calling methods on their own
# However, you can also call methods on STRINGS and INTEGERS! Crazy, huh? Let's try.
###########
###########

puts 4.+(2) ## is the same as 4 + 2--technically the '+' is a method


	# Woah. Integer has a method on it called 'to_s' that returns the string
	# version of the number. Perhaps this will be useful some day. . .

puts 4.to_s
