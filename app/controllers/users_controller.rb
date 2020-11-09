class UsersController < ApplicationController

    def create
        #create user account 
        @user = User.new(name: params[:user][:name], password_digest: params[:user][:password], photo_url: params[:user][:photo_url])
        if @user.save 
            #upon success... render json response 
            render json: @user.to_json 
        else 
            #upon failure... render json response 
        end
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user.to_json(include: [:meals])
    end

    # def login 
    #     @user = User.find_by(name: params[:user][:name])
    #     if @user && @user.authenticate(params[:user][:password])
    #         #upon success... render json response  
    #         render json: @user.to_json(include: [:meals])
    #     else
    #         flash.now[:message] = "Invalid username or password."
    #         #upon failure... render json response 
    #     end  
    # end 

end
