Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'hotels#index'
  get "contacts/new", to: 'contacts#new'
  post "contacts", to: 'contacts#create'
  get "contacts/:id", to: 'contacts#show'

  resources :hotels do
    resources :reviews
    resources :reservations
  end
  resources :prefectures
end
