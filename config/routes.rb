Rails.application.routes.draw do
  
  resources :blog_rakings
  resources :blog_comments
  resources :blogs
  resources :ranking
  get 'users/show'
  root to: 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  # devise_scope :user do  
  #   get '/users/sign_out' => 'devise/sessions#destroy'     
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
