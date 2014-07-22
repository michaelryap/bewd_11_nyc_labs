class Person
	
	# Reader method
  #begin
	
	#def name
		#@name
	#end

	# Writer method
	#def name=(str) # No spaces can surround the equals sign
		#@name = str
	#end

	# The reader and writer method can be shorthanded to:
	attr_accessor :name

	def greeting
		"Hello, #{@name}"
	end

end

class Story 
	attr_accessor :title, :category, :upvotes

	def upvote
		@upvotes += 1
	end

end

class My_Class

	def to_s 
		"The puts method was called"
	end

end

class GA_course 
	def initialize (course_name)
		@course_name = course_name
	end

	def announce_course
		puts "GA has a course on #{@course_name}"
	end
end



# Create a "GA_course" class
# Create an "initialize" method that accepts a class name as an argument
# Assign the argument to an instance variable
# Create an "announce_course" method that prints "GA as a course on…"
# Create two objects, one for "BEWD", another for "UXD"

# person=Person.new
# person.name="Dennis"
# puts person.greeting


