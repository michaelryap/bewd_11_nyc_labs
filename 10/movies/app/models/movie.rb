class Movie < ActiveRecord::Base

	def self.search_for(query)
	    Movie.where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
	 end
end
