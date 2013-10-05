ArabicItTerms::Application.routes.draw do

  root :to => 'terms#index'
  get '/translations' => 'translations#index'

  resources :terms
  resources :translations do
    member do
      get 'vote_up'
    end
  end

end
