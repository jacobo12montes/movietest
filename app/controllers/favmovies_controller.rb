class FavmoviesController < ApplicationController
      def create
        @favmovie = current_user.favmovies.new(movie_id: params[:movie_id])
        if @favmovie.save
          redirect_to movies_path, notice: 'Movie was successfully liked.'
        else
          redirect_to movies_path, notice: 'Movie was  NOT successfully liked.'
        end
      end
    
      def index
        @favmovie = Favmovie.all
      end

      def show
        @favmovie = Favmovie.find(params[:id])
      end
    
    
      private
    
      def favmovie_params
        params.require(:favmovie).permit(:user_id, :movie_id, :title, :description, :movie_lenght, :director, :rating, :search)
      end
end