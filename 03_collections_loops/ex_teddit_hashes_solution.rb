# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#

def get_input
  #Get input from the user.
  return gets.chomp
end

def calculate_upvotes(story)
	# Create a variable, store a hash key "upvotes" for the hash "story"
  upvotes = story[:upvotes]
  # Create a variable, store a hash key "category" for the hash "story"
  category = story[:category]

  # puts "Category is #{category}"

  if category == "cats"
    return upvotes * 5
  elsif category == "bacon"
    return upvotes * 8
  elsif category == "food"
    return upvotes * 3
  else
    return upvotes   
  end 
end

def build_story(story, category)
	{story: story, category: category, upvotes: 1}
end

def get_story
	puts "Please enter a News story:"
	s = get_input
	puts "Please give it a category:"
	c = get_input
	# Pass in the variables you just created to build_story() to return a hash
	# This will get stored into the last position of the stories array each time it is called
	return build_story(s, c)
end

stories = Array.new

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

# Set the yes/no tracking variable state to yes
continue = "y"

while continue.downcase == "y"
	# Push the hash the array
	stories << get_story
	puts "Would you like to add another story (y or n): "
	continue = get_input
end

stories.each do |story|
	upvotes = calculate_upvotes(story)
	puts "Story: #{story[:story]}, Category: #{story[:category]}, Upvotes: #{upvotes}"
end