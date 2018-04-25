Rails.application.routes.draw do
  devise_for :admin

  devise_for :editors, :skip => [:registrations]
  as :editor do
    get 'editors/edit' => 'devise/registrations#edit', :as => 'edit_editor_registration'
    patch 'editors' => 'devise/registrations#update', :as => 'editor_registration'
  end

  devise_scope :admin do
    get 'admin_login', to: 'devise/sessions#new'
  end

  devise_scope :editor do
    get 'editor_login', to: 'devise/sessions#new'
  end

  namespace :editor do
    root 'articles#index'
    resources :articles
  end

  namespace :admin do
    root 'articles#index'
    resources :articles, except: [ :show ]
    resources :sections
    resources :editors
    resources :banners
  end

  scope module: 'landing' do
    root 'home#index'
    get '/:id' => 'home#section', as: :articles_section
    resources :articles, only: [ :show ]
  end
end
