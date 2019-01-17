Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :announcements, only: [:index, :show, :create, :destroy, :update]
      get 'users/find_or_create_user/:id', :to => 'users#find_or_create_user'
    end
  end
end
