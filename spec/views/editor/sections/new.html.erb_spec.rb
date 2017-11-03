require 'rails_helper'

RSpec.describe "editor/sections/new", type: :view do
  before(:each) do
    assign(:editor_section, Section.new())
  end

  it "renders new editor_section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do
    end
  end
end
