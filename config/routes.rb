Rails.application.routes.draw do
  

  resources :posts
  resources :topics
  devise_for :users
  root to: 'static#home'
end
