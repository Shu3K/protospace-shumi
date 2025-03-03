Rails.application.routes.draw do
  devise_for :users
  get'prototypes',to:'prototypes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
    resources :prototypes, only: [:new, :create, :destroy, :edit, :update,:show]
    resources :users, only: :show
end
