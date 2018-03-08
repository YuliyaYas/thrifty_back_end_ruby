Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :searches
      resources :images
      post '/login', to: 'auth#create'
      get 'current_user', to: 'auth#show'

    end
  end

end
