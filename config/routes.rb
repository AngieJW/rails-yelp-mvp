Rails.application.routes.draw do
  get 'reviews/new'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/index'
  get 'restaurants/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create, :index]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
