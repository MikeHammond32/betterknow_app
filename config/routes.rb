Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
    get '/users' => 'users#show'
    patch '/users/:id' => 'user#update'
    post '/users' => 'user#create'
    delete 'users/:id' => 'users#destroy'
end
