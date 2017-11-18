Rails.application.routes.draw do
  devise_for :admin
  devise_for :editor

  namespace :editor do
    root 'welcome#index'
    get 'welcome/index'
    resources :articles
    resources :sections
    resources :authors
  end

  namespace :admin do
    root 'welcome#index'
    get 'welcome/index'
    resources :articles
  end

end
