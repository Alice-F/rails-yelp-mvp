Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# A visitor can see the list of all restaurants.
# GET "restaurants" // index
# She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new" // new
# POST "restaurants" // create
# She/He can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38" // show
  resources :restaurants, only: [:index, :new, :create, :show]

# She/He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# get '/restaurants/:id/reviews/new', to: 'reviews#new'
# post '/restaurants/:id/reviews', to: 'reviews#create'
end
