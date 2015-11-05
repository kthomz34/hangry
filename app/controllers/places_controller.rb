class PlacesController < ApplicationController
	
	def index
		@places = Place.order(:id).page(params[:page]).per_page(1)
	end
end
