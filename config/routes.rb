Rails.application.routes.draw do
  devise_for :editor
  namespace :editor do
    get 'welcome/index'
    resources :articles
    resources :sections
    resources :authors
  end
  resources :articles
  root 'articles#index'
end
