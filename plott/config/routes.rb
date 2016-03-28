Rails.application.routes.draw do
  devise_for :users, :customers, :vendors

  root "splash#index"

end

# #My routes
# Prefix Verb   URI Pattern                        Controller#Action
# new_user_session GET    /users/sign_in(.:format)           devise/sessions#new
# user_session POST   /users/sign_in(.:format)           devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)          devise/sessions#destroy
# user_password POST   /users/password(.:format)          devise/passwords#create
# new_user_password GET    /users/password/new(.:format)      devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)     devise/passwords#edit
#        PATCH  /users/password(.:format)          devise/passwords#update
#        PUT    /users/password(.:format)          devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)            devise/registrations#cancel
# user_registration POST   /users(.:format)                   devise/registrations#create
# new_user_registration GET    /users/sign_up(.:format)           devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)              devise/registrations#edit
#        PATCH  /users(.:format)                   devise/registrations#update
#        PUT    /users(.:format)                   devise/registrations#update
#        DELETE /users(.:format)                   devise/registrations#destroy
# new_customer_session GET    /customers/sign_in(.:format)       devise/sessions#new
# customer_session POST   /customers/sign_in(.:format)       devise/sessions#create
# destroy_customer_session DELETE /customers/sign_out(.:format)      devise/sessions#destroy
# customer_password POST   /customers/password(.:format)      devise/passwords#create
# new_customer_password GET    /customers/password/new(.:format)  devise/passwords#new
# edit_customer_password GET    /customers/password/edit(.:format) devise/passwords#edit
#         PATCH  /customers/password(.:format)      devise/passwords#update
#        PUT    /customers/password(.:format)      devise/passwords#update
# cancel_customer_registration GET    /customers/cancel(.:format)        devise/registrations#cancel
# customer_registration POST   /customers(.:format)               devise/registrations#create
# new_customer_registration GET    /customers/sign_up(.:format)       devise/registrations#new
# edit_customer_registration GET    /customers/edit(.:format)          devise/registrations#edit
#        PATCH  /customers(.:format)               devise/registrations#update
#        PUT    /customers(.:format)               devise/registrations#update
#        DELETE /customers(.:format)               devise/registrations#destroy
# new_vendor_session GET    /vendors/sign_in(.:format)         devise/sessions#new
# vendor_session POST   /vendors/sign_in(.:format)         devise/sessions#create
# destroy_vendor_session DELETE /vendors/sign_out(.:format)        devise/sessions#destroy
# vendor_password POST   /vendors/password(.:format)        devise/passwords#create
# new_vendor_password GET    /vendors/password/new(.:format)    devise/passwords#new
# edit_vendor_password GET    /vendors/password/edit(.:format)   devise/passwords#edit
#        PATCH  /vendors/password(.:format)        devise/passwords#update
#        PUT    /vendors/password(.:format)        devise/passwords#update
# cancel_vendor_registration GET    /vendors/cancel(.:format)          devise/registrations#cancel
# vendor_registration POST   /vendors(.:format)                 devise/registrations#create
# new_vendor_registration GET    /vendors/sign_up(.:format)         devise/registrations#new
# edit_vendor_registration GET    /vendors/edit(.:format)            devise/registrations#edit
#        PATCH  /vendors(.:format)                 devise/registrations#update
#        PUT    /vendors(.:format)                 devise/registrations#update
#        DELETE /vendors(.:format)                 devise/registrations#destroy
#   root GET    /                                  splash#index
