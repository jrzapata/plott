Rails.application.routes.draw do
  devise_for :users

  resources :spots

  resources :vendors do
    resources :spots
  end

  resources :customers do
    resources :spots
  end
  root "spots#index"

  get "/no_access", to: "spots#no_access"

  # get 'customers/:customer_id/spots/:id' => 'spots#update'
end

# Prefix Verb   URI Pattern                                      Controller#Action
# new_user_session GET    /users/sign_in(.:format)                         devise/sessions#new
# user_session POST   /users/sign_in(.:format)                         devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)                        devise/sessions#destroy
# user_password POST   /users/password(.:format)                        devise/passwords#create
# new_user_password GET    /users/password/new(.:format)                    devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)                   devise/passwords#edit
#        PATCH  /users/password(.:format)                        devise/passwords#update
#        PUT    /users/password(.:format)                        devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                          devise/registrations#cancel
# user_registration POST   /users(.:format)                                 devise/registrations#create
# new_user_registration GET    /users/sign_up(.:format)                         devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)                            devise/registrations#edit
#        PATCH  /users(.:format)                                 devise/registrations#update
#        PUT    /users(.:format)                                 devise/registrations#update
#        DELETE /users(.:format)                                 devise/registrations#destroy
#  spots GET    /spots(.:format)                                 spots#index
#        POST   /spots(.:format)                                 spots#create
# new_spot GET    /spots/new(.:format)                             spots#new
# edit_spot GET    /spots/:id/edit(.:format)                        spots#edit
#   spot GET    /spots/:id(.:format)                             spots#show
#        PATCH  /spots/:id(.:format)                             spots#update
#        PUT    /spots/:id(.:format)                             spots#update
#        DELETE /spots/:id(.:format)                             spots#destroy
# vendor_spots GET    /vendors/:vendor_id/spots(.:format)              spots#index
#        POST   /vendors/:vendor_id/spots(.:format)              spots#create
# new_vendor_spot GET    /vendors/:vendor_id/spots/new(.:format)          spots#new
# edit_vendor_spot GET    /vendors/:vendor_id/spots/:id/edit(.:format)     spots#edit
# vendor_spot GET    /vendors/:vendor_id/spots/:id(.:format)          spots#show
#        PATCH  /vendors/:vendor_id/spots/:id(.:format)          spots#update
#        PUT    /vendors/:vendor_id/spots/:id(.:format)          spots#update
#        DELETE /vendors/:vendor_id/spots/:id(.:format)          spots#destroy
# vendors GET    /vendors(.:format)                               vendors#index
#        POST   /vendors(.:format)                               vendors#create
# new_vendor GET    /vendors/new(.:format)                           vendors#new
# edit_vendor GET    /vendors/:id/edit(.:format)                      vendors#edit
# vendor GET    /vendors/:id(.:format)                           vendors#show
#        PATCH  /vendors/:id(.:format)                           vendors#update
#        PUT    /vendors/:id(.:format)                           vendors#update
#        DELETE /vendors/:id(.:format)                           vendors#destroy
# customer_spots GET    /customers/:customer_id/spots(.:format)          spots#index
#        POST   /customers/:customer_id/spots(.:format)          spots#create
# new_customer_spot GET    /customers/:customer_id/spots/new(.:format)      spots#new
# edit_customer_spot GET    /customers/:customer_id/spots/:id/edit(.:format) spots#edit
# customer_spot GET    /customers/:customer_id/spots/:id(.:format)      spots#show
#        PATCH  /customers/:customer_id/spots/:id(.:format)      spots#update
#        PUT    /customers/:customer_id/spots/:id(.:format)      spots#update
#        DELETE /customers/:customer_id/spots/:id(.:format)      spots#destroy
# customers GET    /customers(.:format)                             customers#index
#        POST   /customers(.:format)                             customers#create
# new_customer GET    /customers/new(.:format)                         customers#new
# edit_customer GET    /customers/:id/edit(.:format)                    customers#edit
# customer GET    /customers/:id(.:format)                         customers#show
#        PATCH  /customers/:id(.:format)                         customers#update
#        PUT    /customers/:id(.:format)                         customers#update
#        DELETE /customers/:id(.:format)                         customers#destroy
#   root GET    /                                                spots#index
