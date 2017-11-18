Rails.application.routes.draw do
    devise_for :admin
    devise_for :editor
  namespace :editor do
    root 'editor/welcome#index'
    get 'welcome/index'
    resources :articles
    resources :sections
    resources :authors
  end

  namespace :admin do
    get 'welcome/index'
    resources :articles
  end

    root 'admin/welcome#index'
end
