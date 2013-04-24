SampleApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]

  root to: 'static_pages#home'

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
end
#== Route Map
# Generated on 24 Apr 2013 16:17
#
#             POST   /users(.:format)          users#create
#    new_user GET    /users/new(.:format)      users#new
#   edit_user GET    /users/:id/edit(.:format) users#edit
#        user GET    /users/:id(.:format)      users#show
#             PUT    /users/:id(.:format)      users#update
#             DELETE /users/:id(.:format)      users#destroy
#    sessions POST   /sessions(.:format)       sessions#create
# new_session GET    /sessions/new(.:format)   sessions#new
#     session DELETE /sessions/:id(.:format)   sessions#destroy
#  microposts POST   /microposts(.:format)     microposts#create
#   micropost DELETE /microposts/:id(.:format) microposts#destroy
#        root        /                         static_pages#home
#      signup        /signup(.:format)         users#new
#      signin        /signin(.:format)         sessions#new
#     signout DELETE /signout(.:format)        sessions#destroy
#        help        /help(.:format)           static_pages#help
#       about        /about(.:format)          static_pages#about
#     contact        /contact(.:format)        static_pages#contact
