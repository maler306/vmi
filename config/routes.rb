Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :prices
  devise_for :users
  resources :users do
    post 'add', on: :collection
  end
  
  
  resources :organizations do
    resources :products, shallow: true
  end
 
  resources :products do
    resources :prices#, only: [:create, :destroy]
  end
  
    resources :products do
    collection { post :search, to: 'products#index' }
    end
  
  root "pages#home"
  get 'pages/home'
  get "/about", to: "pages#about"
  get "/help", to: "pages#help"

end
