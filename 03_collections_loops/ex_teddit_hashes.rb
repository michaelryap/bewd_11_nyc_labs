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

# Used to hold stories captured
@stories = Array.new
@story = Hash.new

def get_input
  #Get input from the user.
  return gets.chomp
end

def calculate_upvotes(story)
  upvotes = 1
  if @story[:category] == "cats"
    return upvotes * 5
  elsif @story[:category] == "bacon"
    return upvotes * 8
  elsif @story[:category] == "food"
    return upvotes * 3
  else
    return upvotes   
  end 
end

def add_story
  @story = Hash.new
	puts "Please enter a News story:"
	@story[:title] = get_input
  # puts "Story title is #{@story[:title]}"
	puts "Please give it a category:"
	@story[:category] = get_input
	@story[:upvotes] = calculate_upvotes(@story)
  # puts "I am storing: #{@story}"
	@stories.push(@story)
  # puts "Confirm: #{@stories}"
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

add_story

puts "Would you like to add another story? Enter \'y\' or \'n\'?" 
another_story = get_input

while another_story == "y"
	add_story
	puts "Would you like to add another story? Enter \'y\' or \'n\'?" 
	another_story = get_input
end

puts @stories[0]
puts @stories[1]
puts @stories.length
