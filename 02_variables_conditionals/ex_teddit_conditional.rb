# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  return gets.chomp
end


=begin
def calculate_upvotes(story, category)
  upvotes = 1
	# Write code so that:
	if category == 'cats' 
    # If the Story is about cats multiply the upvotes by 5
    return upvotes * 5
  elsif category == 'bacon'
    # If the Story is about bacon multiply the upvotes by 8
    return upvotes * 8
		
  elsif category == "food" # notice the lower case (see what happens when you enter a category with an upper case 'Food')
	 # If the Story is about Food it gets 3 times the upvotes.
   return upvotes * 3
  else 
    return upvotes
  end
  #For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end
=end

# Write code so that:
# If the Story is about cats multiply the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.

def calculate_upvotes(story, category)
  upvotes = 1
  if category = "cats"
    return upvotes * 5
  elsif category = "bacon"
    return upvotes * 8
  elsif category = "food"
    return upvotes * 3
  else
    return upvotes   
  end 
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! \"#{story}\", Category: #{category.capitalize}, Current Upvotes: #{upvotes}"