Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api, defaults: {format: :json} do
      resources :users do
        resources :lists
      end
      resources :lists, only: [] do
        resources :items, only: [:create, :update]
      end

      resources :items, only: [:destroy]
    end
end
