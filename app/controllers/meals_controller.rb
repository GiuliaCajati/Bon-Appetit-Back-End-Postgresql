class MealsController < ApplicationController
    
    def index 
        @meals = Meal.all
        render json: @meals.to_json(include: :ingredients) 
    end 

    def update 
        @meal = Meal.find(params[:meal_id])
        @meal.likes =(params[:meal_likes]) 
        @meal.save 
        render json: @meal.to_json
    end 

    def show 
    end 

    private

    # def strong_params
    #     params.require[:relationship].permit[:id, :meal_likes ]
    # end
     

end