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
get "/discussions/:discussion_id", to: "discussions#show", as: "discussion"
get '/discussions/:discussion_id/edit', to: 'discussions#edit', as: "edit_discussion"
patch '/discussions/:discussion_id', to: "discussions#update", as: "update_discussion"
delete '/discussions/:discussion_id', to: "discussions#destroy", as: "delete_discussion"

get '/discussions/:discussion_id/comments/new', to: "comments#new", as: "new_comment"
post '/discussions/:discussion_id/comments', to: "comments#create", as: "post_comment"
get '/discussions/:discussion_id/comments/:id/edit', to: "comments#edit", as: "edit_comment"
patch '/discussions/:discussion_id/comments/:id', to: "comments#update", as: "update_comment"
delete '/discussions/:discussion_id/comments/:id', to: "comments#destroy", as: "delete_comment"

get '/simulation', to: "nba_teams#index", as: "simulation"
get '/simulation/:nba_team_id/vs/:id', to: "nba_teams#show", as: "simulation_run"


end
