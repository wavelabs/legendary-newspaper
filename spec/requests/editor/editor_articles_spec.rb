require 'rails_helper'

RSpec.describe "Editor::Articles", type: :request do
  describe "GET /editor_articles" do
    it "works! (now write some real specs)" do
      get editor_articles_path
      expect(response).to have_http_status(200)
    end
  end
end
