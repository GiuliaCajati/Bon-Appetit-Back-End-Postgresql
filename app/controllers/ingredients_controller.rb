class IngredientsController < ApplicationController



    def index 
        @ingredient = Ingredient.all
        render json: @ingredient.to_json() 
    end 

end