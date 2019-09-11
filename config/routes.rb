Rails.application.routes.draw do
  resources :relaxation_repos
  resources :relaxations
  resources :event_repos
  resources :events
  resources :recipe_repos
  resources :recipes
  resources :video_repos
  resources :user_repos
  resources :videos
  resources :users
  
  resources :login, only: [:new, :create]

  delete "/logout", to: "login#destroy", as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
