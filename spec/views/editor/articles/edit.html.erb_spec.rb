require 'rails_helper'

RSpec.describe "editor/articles/edit", type: :view do
  before(:each) do
    @editor_article = assign(:editor_article, Article.create!())
  end

  it "renders the edit editor_article form" do
    render

    assert_select "form[action=?][method=?]", editor_article_path(@editor_article), "post" do
    end
  end
end
