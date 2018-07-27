Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html'
  resources :developers
  resources :properties
  resources :articles
  #resources :agents - not used
  resources :preowned_properties

  match 'admin', to: 'admin#settings', via: [:get,:post,:put]
  match 'add_location', to: 'admin#add_location', via: [:post]
  match 'add_price_range', to: 'admin#add_price_range', via: [:post]
  get 'remove_location/:id', to: 'admin#remove_location', as: 'remove_location'
  get 'remove_price_range/:id', to: 'admin#remove_price_range', as: 'remove_price_range'

  get 'remove_featured1', to: 'admin#remove_featured1', as: 'remove_featured1'
  get 'remove_featured2', to: 'admin#remove_featured2', as: 'remove_featured2'
  get 'remove_featured3', to: 'admin#remove_featured3', as: 'remove_featured3'
  get 'remove_featured4', to: 'admin#remove_featured4', as: 'remove_featured4'
  get 'remove_featured5', to: 'admin#remove_featured5', as: 'remove_featured5'

  post 'properties/search', to: 'properties#search', as: 'search_properties'
  post 'home/subscribe',    to: 'home#subscribe',    as: 'subscribe'

  get 'contact_us', to: 'home#contact_us', as: 'contact_us'
  get 'about_us',   to: 'home#about_us',   as: 'about_us'

  root 'home#index'
end
