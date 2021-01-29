require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'has a title' do
    current_user = User.find(1)
    # find_or_create!(email: 'example@email.com', 
    #                                     password: 'qwertyuiop', 
    #                                     password_confirmation: 'qwertyuiop')

    movie = Movie.create!(title: 'Some title',
                          description: 'MyText',
                          movie_length: 'Movie Length',
                          director: 'Director',
                          rating: 'Rating',
                          user: current_user)
    expect(movie).to be_valid
  end                                
end
