class UsersController < ApplicationController

    def show 
        user = User.find_by(ame: params[:name])
        photo_url = rails_blob_path(user.photo_url)

        # Rails provides us a url that we can link to do — rails_blob_path

        if user.password == params[:password]
            render json: {user: user, photo_url: photo_url}
        else
            render json: {messge: "This user is not authenticated"}
    end 
end
