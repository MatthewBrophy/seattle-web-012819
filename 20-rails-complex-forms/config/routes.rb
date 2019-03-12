Rails.application.routes.draw do
  resources :degrees
  resources :ships, only: [:show]
  resources :crew_members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
