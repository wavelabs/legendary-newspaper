require 'rails_helper'

RSpec.describe "editor/articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(),
      Article.create!()
    ])
  end

  it "renders a list of editor/articles" do
    render
  end
end
