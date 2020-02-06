Rails.application.routes.draw do
  get 'user_views/create'
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :contents
  resources :user_views
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
