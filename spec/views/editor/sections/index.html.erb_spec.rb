require 'rails_helper'

RSpec.describe "editor/sections/index", type: :view do
  before(:each) do
    assign(:sections, [
      Section.create!(),
      Section.create!()
    ])
  end

  it "renders a list of editor/sections" do
    render
  end
end
