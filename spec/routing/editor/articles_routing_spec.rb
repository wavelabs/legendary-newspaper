require "rails_helper"

RSpec.describe Editor::ArticlesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/editor/articles").to route_to("editor/articles#index")
    end

    it "routes to #new" do
      expect(:get => "/editor/articles/new").to route_to("editor/articles#new")
    end

    it "routes to #show" do
      expect(:get => "/editor/articles/1").to route_to("editor/articles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/editor/articles/1/edit").to route_to("editor/articles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/editor/articles").to route_to("editor/articles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/editor/articles/1").to route_to("editor/articles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/editor/articles/1").to route_to("editor/articles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/editor/articles/1").to route_to("editor/articles#destroy", :id => "1")
    end

  end
end
