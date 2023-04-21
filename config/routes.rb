Rails.application.routes.draw do
  namespace :turbo do
    namespace :ios do
      resources :path_configurations, only: :show
    end
  end
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "contacts#index"
end
