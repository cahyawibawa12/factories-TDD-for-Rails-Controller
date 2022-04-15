Rails.application.routes.draw do
  # get 'foods/index'
  # get 'foods/new'
  # get 'foods/show'
  # get 'foods/edit'
  resources :food
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
