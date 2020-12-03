Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do
      resources :users, only: [:index, :create]
      resources :pets, only: [:show, :index, :create]
      get '/users/:name', to: 'users#showName'
  end

end
