class MealsController < ApplicationController



    def index 
        @meals = Meal.all
        render json: @meals.to_json() 
    end 
     #include: :ingredients

end