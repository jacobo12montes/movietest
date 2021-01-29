module Api
  module V1
    class MoviesController < ApplicationController
      # before_action :restrict_access 

        respond_to :json

        def index
          respond_with Movie.search(params[:search])
        end

        def show
          respond_with  Movie.find(params[:id])
        end

        def create
          respond_with current_user.Movie.build(movie_params)
        end

        def update
          respond_with Movie.update(movie_params)
        end

        def destroy
          respond_with Movie.destroy(params[:id])  
        end

        private
        def movie_params
          params.require(:movie).permit(:title, :description, :movie_lenght, :director, :rating, :search)
        end

        # def restrict_access
        #   authenticate_or_request_with_http_token do |token, options|
        #     ApiKey.exists?(access_token: token)
        #   end
        # end


        # # def restrict_access
        # #   api_key = ApiKey.find_by_access_token(params[:access_token])
        # #   head :unauthorized unless api_key
        # # end



    end    
  end
end