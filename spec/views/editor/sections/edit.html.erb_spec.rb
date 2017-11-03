require 'rails_helper'

RSpec.describe "editor/sections/edit", type: :view do
  before(:each) do
    @editor_section = assign(:editor_section, Section.create!())
  end

  it "renders the edit editor_section form" do
    render

    assert_select "form[action=?][method=?]", editor_section_path(@editor_section), "post" do
    end
  end
end
