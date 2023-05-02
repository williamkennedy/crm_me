Rails.application.routes.draw do
  namespace :turbo do
    namespace :ios do
      resource :path_configuration, only: :show
    end
  end
  resources :contacts do
    collection do
      get :import
    end
  end
  get '/hello_world', to: "contacts#hello_world"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "contacts#index"
end
