class UsersController < ApplicationController

    # def show 
    #     user = User.find_by(ame: params[:name])
    #     photo_url = rails_blob_path(user.photo_url)
    #     # Rails provides us a url that we can link to do — rails_blob_path
    #     if user.password == params[:password]
    #         render json: {user: user, photo_url: photo_url}
    #     else
    #         render json: {messge: "This user is not authenticated"}
    # end 

    def create 
        #create user account 
        @user = User.new(user_params)
        if @user.save 
            #upon success... render json response 
            render json: @user.to_json 
        else 
            #upon failure... render json response 
        end
        
    end 

    def login
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            #upon success... render json response  
            render json: @user.to_json(include: [:meals])
        else
            flash.now[:message] = "Invalid username or password."
            #upon failure... render json response 
        end  
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user.to_json(include: [:meals])
    end 


end
