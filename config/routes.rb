Rails.application.routes.draw do
  

  resources :topics
  devise_for :users
  root to: 'static#home'
end
