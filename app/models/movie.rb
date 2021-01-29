class Movie < ApplicationRecord
  validates :title, presence: true
  self.inheritance_column = 'not_sti'
  belongs_to :user
  has_many :favmovies

  def self.search(search)
    if search
      where(['title LIKE ?', "%#{search}%"]).or(where(['description LIKE ?', "%#{search}%"]))
    else
      all
    end
  end
end
