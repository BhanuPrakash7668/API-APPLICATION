Rails.application.routes.draw do
  root to: "public#homepage"
  get '/definitions' =>'public#defs'
  get '/synonyms' =>'public#syns'
  get '/antonyms' =>'public#ants'
  #  get '/definitions' =>'public#defs'
  devise_for :accounts
  resources :apis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
