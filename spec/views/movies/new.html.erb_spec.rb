require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      title: "MyString",
      description: "MyText",
      movie_length: "MyString",
      director: "MyString",
      rating: "MyString"
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "textarea[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[movie_length]"

      assert_select "input[name=?]", "movie[director]"

      assert_select "input[name=?]", "movie[rating]"
    end
  end
end
