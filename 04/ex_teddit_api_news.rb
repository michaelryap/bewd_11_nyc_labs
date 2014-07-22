# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

# gem install rest-client
# Install the rest-client gem

require 'json'
# Require library of methods from json
require 'rest-client'
# Require library of methods from rest-client

=begin
#Reddit
#========================================================

reddit_client = RestClient.get('http://reddit.com/.json')
reddit_json = JSON.load(reddit_client)

# puts reddit_json["data"]["children"][0]["data"]["title"]
# puts reddit_json.keys

number_of_stories = reddit_json["data"]["children"].length

puts "Number of stories: #{number_of_stories}"

1.upto(number_of_stories) do |num|
    puts reddit_json["data"]["children"][num-1].class
    puts "\n"
end

# Another way to do the above:

reddit_json["data"]["children"].each

# Then check if the story is nil
if story.nil?

=end

=begin

flowers = Array.new
flowers << {color: "red", flower: "rose"}
flowers << {color: "yellow", flower: "daisy"}
puts flowers[0]

=end

#Mashable
#========================================================

# Declare variables
mashable_client = RestClient.get('http://mashable.com/stories.json')
mashable_json = JSON.load(mashable_client)
new_stories = Array.new

# Loop through each element
mashable_json["new"].each do |i|

	title = i["title"]
	author = i["author"]
	link = i["link"]
	new_stories << build_story(title, author, link)

end















