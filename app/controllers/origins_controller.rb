class OriginsController < ApplicationController



    def index 
        @origins = Origin.all
        render json: @origins.to_json() 
    end 

end