require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      title: "Title",
      description: "MyText",
      movie_length: "Movie Length",
      director: "Director",
      rating: "Rating"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Movie Length/)
    expect(rendered).to match(/Director/)
    expect(rendered).to match(/Rating/)
  end
end
