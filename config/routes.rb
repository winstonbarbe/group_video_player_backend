Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    # Videos
    post "/videos" => "videos#create"
    patch "/videos/:id" => "videos#update"
    delete "/videos/:id" => "videos#destroy"

  end

end
