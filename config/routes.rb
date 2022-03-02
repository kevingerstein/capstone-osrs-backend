Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/equipment-sets" => "equipment_sets#create"
  post "/equipment-sets" => "equipment_sets#create"
  get "/equipment-sets/:id" => "equipment_sets#show"
  patch "/equipment-sets/:id" => "equipment_sets#update"
  delete "/equipment-sets/:id" => "equipment_sets#destroy"
end
