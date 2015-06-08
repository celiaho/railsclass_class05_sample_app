class WelcomeController < ApplicationController

	# This page contains all of the methods referenced in routes.rb. 

	def home_page
	end

	def welcome_page
		@villains = {
			"joker" => {
				strengths: ["studly", "purple pants", "nice teeth"]
			},
			"catwoman" => {
				strengths: ["whip", "cool goggles"]
			}
		}
	end

	def detail
		# (1) Hash is defined for this method
		@villains = {
			"joker" => {
				strengths: ["studly", "purple pants", "nice teeth"]
			},
			"catwoman" => {
				strengths: ["whip", "cool goggles"]
			}
		}

		# (2) 
		# params {name: "whatever's in the url"}
		if @villains.has_key?( params[:key] )
			@villain_details = @villains[params[:key]]
		else 
			@villain_details = "No information found."
		end
	end

end