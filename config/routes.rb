Rails.application.routes.draw do
  resources :places
  get 'avatars/create'
  resources :listings
  
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations',
             }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :listings, :users, :places
  end
  resources :users do
    resources :listings
  end
  post 'passwords/forgot', to: 'passwords#forgot'
  post 'passwords/reset/:token', to: 'passwords#reset'
  post 'passwords/update', to: 'passwords#update'
  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  post 'rails/active_storage/delete', to: 'direct_uploads#destroy'
end
