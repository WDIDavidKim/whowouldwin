Rails.application.routes.draw do

root to: "users#index"

get '/signup' => "users#new", as: "signup"
post '/users' => "users#create"
get '/users/:id' => "users#show", as: "user"
get '/users/:id/edit' => "users#edit", as: "edit_user"
patch '/users/:id' => "users#update"

get '/login' => "sessions#new", as: "login"
get '/logout' => "sessions#destroy", as: "logout"
post '/login' => "sessions#create"

get '/discussions', to: "discussions#index", as: "discussions"
get '/discussions/new', to: "discussions#new", as: "new_discussion"
post '/discussions', to: "discussions#create"
get "/discussions/:discussion_id", to: "discussions#show", as: "show_discussion"
get '/discussions/:discussion_id/edit', to: 'discussions#edit', as: "edit_discussion"
patch '/discussions/:discussion_id', to: "discussions#update", as: "update_discussion"
delete '/discussions/:discussion_id', to: "discussions#destroy", as: "delete_discussion"

end
