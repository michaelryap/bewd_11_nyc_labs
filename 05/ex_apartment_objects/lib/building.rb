#Building Class
class Building

	attr_accessor :name, :address, :apartments

	# Make an array?
	# Yes, you must make an array to store the apartments that are created

	def initialize (name, address)
		@name = name
		@address = address
		@apartments = []
	end

	def view_apartments
		puts "---#{name} Apartment List---"
		@apartments.each do |apartment|
			# Call the to_s method
			puts apartment
			puts (apartment.is_occupied? ? apartment.renter : "This apartment is vacant")
			# Single line if statement
			# condition ? if_true : if_false
		end
	end

end