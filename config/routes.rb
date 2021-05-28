Rails.application.routes.draw do
  devise_for :users

  root to: 'homepage#index'


  namespace :admin do
    resources :posts
  end
end
