Rails.application.routes.draw do
  get '/most-popular-snacks', to: 'snacks#most_popular'
  resources :snacks
  # :index, :create, :show, :new, :edit, :update, :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
