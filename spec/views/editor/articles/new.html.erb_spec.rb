require 'rails_helper'

RSpec.describe "editor/articles/new", type: :view do
  before(:each) do
    assign(:editor_article, Article.new())
  end

  it "renders new editor_article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do
    end
  end
end
