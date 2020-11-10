class MealsController < ApplicationController
    
    def index 
        @meals = Meal.all
        render json: @meals.to_json(include: :origin) 
    end 

    def update 
        @meal = Meal.find(params[:id])
        @meal.update(likes: params[:likes]) 
        render json: @meal.to_json
    end 

    def show 
        @meal = Meal.find(params[:id])
        render json: @meal.to_json(include: :origin) 
    end 

    private

    # def strong_params
    #     params.require[:relationship].permit[:id, :meal_likes ]
    # end
     

end