Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
  # end
    get '/users' => 'users#index'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    post '/users' => 'users#create'
    delete 'users/:id' => 'users#destroy'
    post 'sessions' => 'sessions#create'
    get '/clients/:id' => 'clients#show'
    get '/ratings/:id' => 'ratings#show'
    get '/ratings' => 'ratings#index'
    post '/ratings' => 'ratings#create'
  end
end