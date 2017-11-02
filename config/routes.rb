Rails.application.routes.draw do
  namespace :admin do
    get 'welcome/index'
  end

  root 'admin/welcome#index'
end
