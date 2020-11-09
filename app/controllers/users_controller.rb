class UsersController < ApplicationController

    def create
        debugger
        #create user account 
        @user = User.new(name: params[:user][:name], password_digest: params[:user][:password], photo_url: params[:user][:photo_url])
        if @user.save 
            #upon success... render json response 
            render json: @user.to_json(include: [:meals])
        else 
            #upon failure... render json response 
            render json: {message: "This user is not authenticated"}
        end
    end 

    def login 
        @user = User.find_by(name: params[:user][:name])
        if @user.password_digest == params[:password]
            #upon success... render json response  
            render json: @user.to_json(include: [:meals])
        else
            #upon failure... render json response 
            render json: { message: "This user is not authenticated" }
        end  

    end

end
