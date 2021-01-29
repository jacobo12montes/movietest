class AddUserRefToMovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :movies, :user, foreign_key: true
  end
end
