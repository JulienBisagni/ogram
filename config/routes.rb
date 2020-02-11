Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :user_views, only: [:create] do
    patch "save", on: :collection
  end
  resources :contents do
    resources :comments, only: :create
  end
  resources :comments, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
