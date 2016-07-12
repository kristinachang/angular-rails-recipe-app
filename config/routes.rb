Rails.application.routes.draw do
  
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'home#index'
  get '/about', to: 'home#about', as: 'about'
  get '/contact', to: 'home#contact', as: 'contact'

  resources :recipes, only: [:index, :show, :create, :update, :destroy]

=begin
                  Prefix Verb   URI Pattern                    Controller#Action

                teaspoon        /teaspoon                      Teaspoon::Engine

        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            user_session POST   /users/sign_in(.:format)       devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
           user_password POST   /users/password(.:format)      devise/passwords#create
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
                         PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
       user_registration POST   /users(.:format)               devise/registrations#create
   new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
                         PATCH  /users(.:format)               devise/registrations#update
                         PUT    /users(.:format)               devise/registrations#update
                         DELETE /users(.:format)               devise/registrations#destroy

                    root GET    /                              home#index
                   about GET    /about(.:format)               home#about
                 contact GET    /contact(.:format)             home#contact
                 
                 recipes GET    /recipes(.:format)             recipes#index
                         POST   /recipes(.:format)             recipes#create
                  recipe GET    /recipes/:id(.:format)         recipes#show
                         PATCH  /recipes/:id(.:format)         recipes#update
                         PUT    /recipes/:id(.:format)         recipes#update
                         DELETE /recipes/:id(.:format)         recipes#destroy

Routes for Teaspoon::Engine:
   root GET  /                             teaspoon/suite#index
fixture GET  /fixtures/*filename(.:format) teaspoon/suite#fixtures
  suite GET  /:suite(.:format)             teaspoon/suite#show {:suite=>"default"}
        POST /:suite/:hook(.:format)       teaspoon/suite#hook {:suite=>"default", :hook=>"default"}
=end

end
