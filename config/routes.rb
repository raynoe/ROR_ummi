Rorummi::Application.routes.draw do

  root :to => 'home#index'
  
  devise_for :users
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  

  resources :forums
  resources :votes

  
  
end
