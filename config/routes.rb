Rails.application.routes.draw do
  resources :reminder_repos
  resources :reminders, only: [:show]
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
  get '/myevents', to: 'events#show_my_events', as: 'my_events'
  get '/myrecipes', to: 'recipes#show_my_recipes', as: 'my_recipes'
  get '/myvideos', to: 'videos#show_my_videos', as: 'my_videos'
  get '/home', to: 'users#home', as: 'home'
  get '/myreminders', to: 'users#myreminders', as: 'my_reminders'

  delete "/logout", to: "login#destroy", as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
