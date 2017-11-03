require 'rails_helper'

RSpec.describe "editor/sections/show", type: :view do
  before(:each) do
    @editor_section = assign(:editor_section, Section.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
