Rails.application.routes.draw do
  devise_for :admin, :editor

  devise_scope :admin do
    get 'admin_login', to: 'devise/sessions#new'
  end

  devise_scope :editor do
    get 'editor_login', to: 'devise/sessions#new'
  end

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
    resources :editors
    resources :banners
  end

  scope module: 'landing' do
    resources :articles, only: [ :index, :show ]
    root 'articles#index'
  end
end
