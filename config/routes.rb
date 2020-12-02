Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do
      resources :users, only: [:index]
      resources :pets, only: [:show, :index]
      get '/users/:name', to: 'users#showName'
  end

end
