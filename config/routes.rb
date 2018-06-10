Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
  get '/dashboard', to:'dashboard#index', as: :dashboard
  post '/newanswer', to:'dashboard#newanswer',  as: :newanswer
end
