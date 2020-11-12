class OriginsController < ApplicationController



    def index 
        @origins = Origin.all
        render json: @origins.to_json()
    end 
    
    def show 
        @origin = Meal.find(params[:id])
        render json: @origin.to_json()
    end
 

end