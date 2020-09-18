Rails.application.routes.draw do
  root to: "public#homepage"
  get '/words/random_word' =>'public#random'
  get 'words/:word/definitions' => 'public#defs'
  get 'words/:word/antonyms' => 'public#ants'
  get 'words/:word/synonyms' => 'public#syns'
  get 'words/:word/examples' => 'public#exms'
  devise_for :accounts
  resources :apis
end
