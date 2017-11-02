require 'rails_helper'

RSpec.describe "editor/articles/show", type: :view do
  before(:each) do
    @editor_article = assign(:editor_article, Article.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
