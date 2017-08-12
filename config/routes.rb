Rails.application.routes.draw do
  
  resources :topics do
    scope module: :topics do
      resources :posts
    end
  end

  devise_for :users

  get 'posts/new', to: 'topics/posts#new', as: 'new_post'
  post 'posts', to: 'topics/posts#create', as: 'create_post'


  root to: 'static#home'
  
end
