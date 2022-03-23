Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1, defaults: { format: 'json'} do
      resources :greeting, only: %i[index]
    end
  end

  root 'greeting#index'


end
