require 'rails_helper'

RSpec.describe 'movies/index', type: :view do
  before(:each) do
    assign(:movies, [
             Movie.create!(
               title: 'Title',
               description: 'MyText',
               movie_length: 'Movie Length',
               director: 'Director',
               rating: 'Rating'
             ),
             Movie.create!(
               title: 'Title',
               description: 'MyText',
               movie_length: 'Movie Length',
               director: 'Director',
               rating: 'Rating'
             )
           ])
  end

  it 'renders a list of movies' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Movie Length'.to_s, count: 2
    assert_select 'tr>td', text: 'Director'.to_s, count: 2
    assert_select 'tr>td', text: 'Rating'.to_s, count: 2
  end
end
