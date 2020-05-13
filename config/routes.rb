Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


   get "restaurants", to: "restaurants#index"
   get "restaurants/new", to: "restaurants#new"
   get "restaurants/:id", to: "restaurants#show", as: :restaurant
   post "restaurants", to: "restaurants#create"
   get "restaurants/:id/edit", to: "restaurants#edit"

   get "reviews", to: "reviews#index"
   get "reviews/new", to: "reviews#new"
   get "reviews/:id", to: "reviews#show", as: :review
   post "review", to: "review#create"
   get "reviews/:id/edit", to: "reviews#edit"
   patch "review/:id", to: "review#update"

    resources :restaurants do
    resources :reviews, only: [:new, :create, :update]
  end
  resources :reviews, only: [:destroy]
  end
