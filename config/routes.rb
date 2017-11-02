Rails.application.routes.draw do
  namespace :editor do
    get 'welcome/index'
  end

  root 'editor/welcome#index'
end
