Todo::Application.routes.draw do

  # For API
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :users do
          resources :lists, only: [:show, :edit]
      end

      resources :lists, only: [:index, :show] do
          resources :items, only: [:create, :new]
      end
        resources :items, only: [:destroy]
    end
  end


  # Not for API
  resources :users do 
    resources :lists, except: [:index]
  end

  resources :lists, only: [] do
    resources :items, only: [:create, :new]
  end

  resources :items, only: [:destroy]

  root to: 'users#new'
end
