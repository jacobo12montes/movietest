class User < ApplicationRecord
  has_many :movies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favmovies, dependent: :destroy
  has_one :api_key, dependent: :destroy
end
