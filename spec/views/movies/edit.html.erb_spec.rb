require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      title: "MyString",
      description: "MyText",
      movie_length: "MyString",
      director: "MyString",
      rating: "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "textarea[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[movie_length]"

      assert_select "input[name=?]", "movie[director]"

      assert_select "input[name=?]", "movie[rating]"
    end
  end
end
