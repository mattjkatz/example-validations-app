Rails.application.routes.draw do
  get "/user" => "users#index"
  post "/user/" => "users#create"
end
