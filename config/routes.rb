Rails.application.routes.draw do
  devise_for :editor
  namespace :editor do
    get 'welcome/index'
  end

  root 'editor/welcome#index'
end
