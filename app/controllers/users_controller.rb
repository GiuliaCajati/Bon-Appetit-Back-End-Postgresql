class UsersController < ApplicationController

    def create
        #create user account 
        @user = User.new(name: params[:user][:name], password_digest: params[:user][:password], photo_url: params[:user][:photo_url])
        if @user.save 
            #upon success... render json response 
            render json: @user.to_json 
        else 
            #upon failure... render json response 
            render json: {message: "This user is not authenticated"}
        end
    end 

    def show 
        @user = User.find_by(name: params[:user][:name])
        user_url = rails_blob_path(user.photo_url)
        debugger
        if @user && @user.authenticate(params[:user][:password])
            #upon success... render json response  
            render json: @user.to_json(include: [:meals])
        else
            #upon failure... render json response 
            render json: { message: "This user is not authenticated" }
        end  
    end

end
