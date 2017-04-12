Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end

    resources :posts
  end

  namespace :account to
    resources :groups
end

  root 'groups#index'
end
