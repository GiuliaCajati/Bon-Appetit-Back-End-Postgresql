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

    def create 
        @meal = Meal.create(name: params[:meal][:name], 
            photo_url: params[:meal], 
            likes:0, 
            instructions: params[:meal][:instructions], 
            ingredients: params[:meal][:ingredients],
            user_id:params[:meal][:user_id], 
            origin_id:params[:meal][:origin_id])
        render json: @meals.to_json(include: :origin) 
    end 


    

    def show 
        @meal = Meal.find(params[:id])
        render json: @meal.to_json(include: :origin) 
    end
    
    def destroy
        @meal = Meal.find(params[:id])
        @meal.destroy
    end

    private

    # def strong_params
    #     params.require[:relationship].permit[:id, :meal_likes ]
    # end
     

end