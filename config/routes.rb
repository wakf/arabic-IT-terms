ArabicItTerms::Application.routes.draw do

  root :to => 'terms#index'
  get '/translations' => 'translations#index'

  resources :terms
  resources :translations

end
