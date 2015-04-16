class TravelersController < ApplicationController
	def index
		@travelers = Traveler.all
	end

	def show
		@traveler = Traveler.find(params[:id])
	end

	def new
	end

	def create
		@traveler = Traveler.new(traveler_params)

		@traveler.save
		redirect_to @traveler
	end

	private
		def traveler_params
			params.require(:traveler).permit(:name, :email, :phone, :destination)
		end
end
