Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
  get "/users/me" => "users#show"
  patch "/users/me" => "users#update"
  delete "/users/me" => "users#destroy"

  get "/equipment-sets" => "equipment_sets#index"
  post "/equipment-sets" => "equipment_sets#create"
  get "/equipment-sets/:id" => "equipment_sets#show"
  patch "/equipment-sets/:id" => "equipment_sets#update"
  delete "/equipment-sets/:id" => "equipment_sets#destroy"
end
