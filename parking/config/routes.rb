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

end

# Prefix Verb   URI Pattern                                     Controller#Action
# new_user_session GET    /users/sign_in(.:format)                        devise/sessions#new
# user_session POST   /users/sign_in(.:format)                        devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)                       devise/sessions#destroy
# user_password POST   /users/password(.:format)                       devise/passwords#create
# new_user_password GET    /users/password/new(.:format)                   devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)                  devise/passwords#edit
#        PATCH  /users/password(.:format)                       devise/passwords#update
#        PUT    /users/password(.:format)                       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                         devise/registrations#cancel
# user_registration POST   /users(.:format)                                devise/registrations#create
# new_user_registration GET    /users/sign_up(.:format)                        devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)                           devise/registrations#edit
#        PATCH  /users(.:format)                                devise/registrations#update
#        PUT    /users(.:format)                                devise/registrations#update
#        DELETE /users(.:format)                                devise/registrations#destroy
# vendor_spots GET    /vendor/:vendor_id/spots(.:format)              spots#index
#        POST   /vendor/:vendor_id/spots(.:format)              spots#create
# new_vendor_spot GET    /vendor/:vendor_id/spots/new(.:format)          spots#new
# edit_vendor_spot GET    /vendor/:vendor_id/spots/:id/edit(.:format)     spots#edit
# vendor_spot GET    /vendor/:vendor_id/spots/:id(.:format)          spots#show
#        PATCH  /vendor/:vendor_id/spots/:id(.:format)          spots#update
#        PUT    /vendor/:vendor_id/spots/:id(.:format)          spots#update
#        DELETE /vendor/:vendor_id/spots/:id(.:format)          spots#destroy
# vendor_index GET    /vendor(.:format)                               vendor#index
#        POST   /vendor(.:format)                               vendor#create
# new_vendor GET    /vendor/new(.:format)                           vendor#new
# edit_vendor GET    /vendor/:id/edit(.:format)                      vendor#edit
# vendor GET    /vendor/:id(.:format)                           vendor#show
#        PATCH  /vendor/:id(.:format)                           vendor#update
#        PUT    /vendor/:id(.:format)                           vendor#update
#        DELETE /vendor/:id(.:format)                           vendor#destroy
# customer_spots GET    /customer/:customer_id/spots(.:format)          spots#index
#        POST   /customer/:customer_id/spots(.:format)          spots#create
# new_customer_spot GET    /customer/:customer_id/spots/new(.:format)      spots#new
# edit_customer_spot GET    /customer/:customer_id/spots/:id/edit(.:format) spots#edit
# customer_spot GET    /customer/:customer_id/spots/:id(.:format)      spots#show
#        PATCH  /customer/:customer_id/spots/:id(.:format)      spots#update
#        PUT    /customer/:customer_id/spots/:id(.:format)      spots#update
#        DELETE /customer/:customer_id/spots/:id(.:format)      spots#destroy
# customer_index GET    /customer(.:format)                             customer#index
#        POST   /customer(.:format)                             customer#create
# new_customer GET    /customer/new(.:format)                         customer#new
# edit_customer GET    /customer/:id/edit(.:format)                    customer#edit
# customer GET    /customer/:id(.:format)                         customer#show
#        PATCH  /customer/:id(.:format)                         customer#update
#        PUT    /customer/:id(.:format)                         customer#update
#        DELETE /customer/:id(.:format)                         customer#destroy
