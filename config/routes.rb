Rails.application.routes.draw do
  root to: "public#homepage"
  get '/words/random_words' =>'public#random'
  get 'words/:word/definition' => 'public#defs'
  get 'words/:word/antonym' => 'public#ants'
  get 'words/:word/synonym' => 'public#syns'
  get 'words/:word/example' => 'public#exms'
  #  get '/definitions' =>'public#defs'
  devise_for :accounts
  resources :apis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
