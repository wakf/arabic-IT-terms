ArabicItTerms::Application.routes.draw do

  root :to => 'terms#new'
  get '/edit' => 'edit#index'

  resources :terms do
    resources :translations
  end

end
