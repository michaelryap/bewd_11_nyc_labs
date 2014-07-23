class RockPaperScissorsController < ApplicationController

	def new
	end

	def show
		# Generate a random element from an array with .sample
		@computer_throw = ["rock", "paper", "scissors"].sample
		@user_throw = params[:id]

		if @computer_throw == "rock" && @user_throw == "paper"
			@msg = "You win!"
		elsif @computer_throw == "paper" && @user_throw == "scissors"
			@msg = "You win!"
		elsif @computer_throw == "scissors" && @user_throw == "rock"
			@msg = "You win!"
		elsif @computer_throw == @user_throw
			@msg = "We tied!"
		else
			@msg = "You lose!"
		end

	end

end