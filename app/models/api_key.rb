class ApiKey < ApplicationRecord
  belongs_to :user
  before_create :generate_access_token
  validates :access_token, uniqueness: true
  validates :user_id, uniqueness: true

  private

  def generate_access_token
    loop do
      self.access_token = SecureRandom.hex
      break unless self.class.exists?(access_token: access_token)
    end
  end
end
