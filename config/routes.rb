Rails.application.routes.draw do

  root to: "products#index"

  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  resources :products
  resources :order_items
  resource :cart, only: [:show]
  resources :charges

  get 'finalize' => 'carts#finalize'

end
