require "rails_helper"

RSpec.describe Editor::SectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/editor/sections").to route_to("editor/sections#index")
    end

    it "routes to #new" do
      expect(:get => "/editor/sections/new").to route_to("editor/sections#new")
    end

    it "routes to #show" do
      expect(:get => "/editor/sections/1").to route_to("editor/sections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/editor/sections/1/edit").to route_to("editor/sections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/editor/sections").to route_to("editor/sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/editor/sections/1").to route_to("editor/sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/editor/sections/1").to route_to("editor/sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/editor/sections/1").to route_to("editor/sections#destroy", :id => "1")
    end

  end
end
