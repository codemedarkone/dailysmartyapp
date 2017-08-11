Rails.application.routes.draw do
  
  resources :topics do 
    resources :posts
  end
 
  devise_for :users
  root to: 'static#home'
end
