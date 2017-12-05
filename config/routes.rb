Rails.application.routes.draw do
  devise_for :admin, :editor

  devise_scope :admin do
    get 'admin_login', to: 'devise/sessions#new'
  end

  devise_scope :editor do
    get 'editor_login', to: 'devise/sessions#new'
  end

  namespace :editor do
    root 'articles#index'
    resources :articles
    resources :authors
  end

  namespace :admin do
    root 'articles#index'
    resources :articles, except: [ :show ]
    resources :sections
    resources :editors
    resources :banners
  end

  scope module: 'landing' do
    resources :articles, only: [ :index, :show ]
    root 'articles#index'
  end
end
