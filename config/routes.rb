Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
      resources :announcements, only: [:create, :destroy, :update]
      resources :links, only: [:create, :destroy, :update]
      resources :timezones, only: [:create, :update, :destroy]
      get 'users/find_or_create_user/:id', :to => 'users#find_or_create_user'
    end
  end
end
