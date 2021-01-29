class CreateFavmovies < ActiveRecord::Migration[6.1]
  def change
    create_table :favmovies do |t|
      t.references :user, foreign_key: true
      t.references :movie, foreign_key: true
  
      t.timestamps
    end
  end
end
