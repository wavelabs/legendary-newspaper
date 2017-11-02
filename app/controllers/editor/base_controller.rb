class Editor::BaseController < ApplicationController
  before_action :authenticate_editor!
  layout 'editor'
end
