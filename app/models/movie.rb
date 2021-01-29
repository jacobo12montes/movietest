class Movie < ApplicationRecord
  self.inheritance_column = 'not_sti'
  belongs_to :user

  def self.search(search)
    if search
      where(['title LIKE ?', "%#{search}%"]).or(where(['description LIKE ?', "%#{search}%"]))
    else
      all
    end
  end
end
