Rails.application.routes.draw do
  resources :video_repos
  resources :user_repos
  resources :videos
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
