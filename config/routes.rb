# == Route Map
#
#                   Prefix Verb   URI Pattern                                            Controller#Action
#                   orders GET    /orders(.:format)                                      orders#index
#                          POST   /orders(.:format)                                      orders#create
#                new_order GET    /orders/new(.:format)                                  orders#new
#               edit_order GET    /orders/:id/edit(.:format)                             orders#edit
#                    order GET    /orders/:id(.:format)                                  orders#show
#                          PATCH  /orders/:id(.:format)                                  orders#update
#                          PUT    /orders/:id(.:format)                                  orders#update
#                          DELETE /orders/:id(.:format)                                  orders#destroy
#               line_items GET    /line_items(.:format)                                  line_items#index
#                          POST   /line_items(.:format)                                  line_items#create
#            new_line_item GET    /line_items/new(.:format)                              line_items#new
#           edit_line_item GET    /line_items/:id/edit(.:format)                         line_items#edit
#                line_item GET    /line_items/:id(.:format)                              line_items#show
#                          PATCH  /line_items/:id(.:format)                              line_items#update
#                          PUT    /line_items/:id(.:format)                              line_items#update
#                          DELETE /line_items/:id(.:format)                              line_items#destroy
#                    carts GET    /carts(.:format)                                       carts#index
#                          POST   /carts(.:format)                                       carts#create
#                 new_cart GET    /carts/new(.:format)                                   carts#new
#                edit_cart GET    /carts/:id/edit(.:format)                              carts#edit
#                     cart GET    /carts/:id(.:format)                                   carts#show
#                          PATCH  /carts/:id(.:format)                                   carts#update
#                          PUT    /carts/:id(.:format)                                   carts#update
#                          DELETE /carts/:id(.:format)                                   carts#destroy
#                   prices GET    /prices(.:format)                                      prices#index
#                          POST   /prices(.:format)                                      prices#create
#                new_price GET    /prices/new(.:format)                                  prices#new
#               edit_price GET    /prices/:id/edit(.:format)                             prices#edit
#                    price GET    /prices/:id(.:format)                                  prices#show
#                          PATCH  /prices/:id(.:format)                                  prices#update
#                          PUT    /prices/:id(.:format)                                  prices#update
#                          DELETE /prices/:id(.:format)                                  prices#destroy
#         new_user_session GET    /users/sign_in(.:format)                               devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                               devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                              devise/sessions#destroy
#            user_password POST   /users/password(.:format)                              devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                          devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                         devise/passwords#edit
#                          PATCH  /users/password(.:format)                              devise/passwords#update
#                          PUT    /users/password(.:format)                              devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                                devise/registrations#cancel
#        user_registration POST   /users(.:format)                                       devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                               devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                                  devise/registrations#edit
#                          PATCH  /users(.:format)                                       devise/registrations#update
#                          PUT    /users(.:format)                                       devise/registrations#update
#                          DELETE /users(.:format)                                       devise/registrations#destroy
#                add_users POST   /users/add(.:format)                                   users#add
#                    users GET    /users(.:format)                                       users#index
#                          POST   /users(.:format)                                       users#create
#                 new_user GET    /users/new(.:format)                                   users#new
#                edit_user GET    /users/:id/edit(.:format)                              users#edit
#                     user GET    /users/:id(.:format)                                   users#show
#                          PATCH  /users/:id(.:format)                                   users#update
#                          PUT    /users/:id(.:format)                                   users#update
#                          DELETE /users/:id(.:format)                                   users#destroy
#    organization_products GET    /organizations/:organization_id/products(.:format)     products#index
#                          POST   /organizations/:organization_id/products(.:format)     products#create
# new_organization_product GET    /organizations/:organization_id/products/new(.:format) products#new
#             edit_product GET    /products/:id/edit(.:format)                           products#edit
#                  product GET    /products/:id(.:format)                                products#show
#                          PATCH  /products/:id(.:format)                                products#update
#                          PUT    /products/:id(.:format)                                products#update
#                          DELETE /products/:id(.:format)                                products#destroy
#            organizations GET    /organizations(.:format)                               organizations#index
#                          POST   /organizations(.:format)                               organizations#create
#         new_organization GET    /organizations/new(.:format)                           organizations#new
#        edit_organization GET    /organizations/:id/edit(.:format)                      organizations#edit
#             organization GET    /organizations/:id(.:format)                           organizations#show
#                          PATCH  /organizations/:id(.:format)                           organizations#update
#                          PUT    /organizations/:id(.:format)                           organizations#update
#                          DELETE /organizations/:id(.:format)                           organizations#destroy
#           product_prices GET    /products/:product_id/prices(.:format)                 prices#index
#                          POST   /products/:product_id/prices(.:format)                 prices#create
#        new_product_price GET    /products/:product_id/prices/new(.:format)             prices#new
#       edit_product_price GET    /products/:product_id/prices/:id/edit(.:format)        prices#edit
#            product_price GET    /products/:product_id/prices/:id(.:format)             prices#show
#                          PATCH  /products/:product_id/prices/:id(.:format)             prices#update
#                          PUT    /products/:product_id/prices/:id(.:format)             prices#update
#                          DELETE /products/:product_id/prices/:id(.:format)             prices#destroy
#                 products GET    /products(.:format)                                    products#index
#                          POST   /products(.:format)                                    products#create
#              new_product GET    /products/new(.:format)                                products#new
#                          GET    /products/:id/edit(.:format)                           products#edit
#                          GET    /products/:id(.:format)                                products#show
#                          PATCH  /products/:id(.:format)                                products#update
#                          PUT    /products/:id(.:format)                                products#update
#                          DELETE /products/:id(.:format)                                products#destroy
#          search_products POST   /products/search(.:format)                             products#index
#                          GET    /products(.:format)                                    products#index
#                          POST   /products(.:format)                                    products#create
#                          GET    /products/new(.:format)                                products#new
#                          GET    /products/:id/edit(.:format)                           products#edit
#                          GET    /products/:id(.:format)                                products#show
#                          PATCH  /products/:id(.:format)                                products#update
#                          PUT    /products/:id(.:format)                                products#update
#                          DELETE /products/:id(.:format)                                products#destroy
#                     root GET    /                                                      pages#home
#               pages_home GET    /pages/home(.:format)                                  pages#home
#                    about GET    /about(.:format)                                       pages#about
#                     help GET    /help(.:format)                                        pages#help
#

Rails.application.routes.draw do
  resources :staffs
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
