class RestaurantsController < ApplicationController
  
  def index
	@restaurant_list =  Restaurant.all
		respond_to do |format|
			format.json { render json: @restaurant_list.as_json(only: [:id, :name]) }
  		format.xml { render xml: @restaurant_list.to_xml(skip_types: true, only: [:id, :name]) }
    end
  end

end
