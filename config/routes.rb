Rails.application.routes.draw do
  # resources :signups
  get '/campers', to: "campers#index", as: "campers"
  get 'campers/new', to: "campers#new", as: "new_camper"
  post 'campers', to: "campers#create"
  get 'campers/:id', to: "campers#show", as: "camper"

  get '/activities', to: "activities#index", as: "activities"
  get '/activities/:id', to: "activities#show", as: "activity"
  get '/activities/new', to:"activities#new", as: "new_activities"
  post '/activities', to: "activities#create"

  get '/signups', to: "signups#index", as: "signups"
  get '/signups/new', to:"signups#new", as: "new_signups"
  post '/signups', to: "signups#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
