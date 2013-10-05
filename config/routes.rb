ArabicItTerms::Application.routes.draw do
  resources :translations

  resources :terms

  root :to => 'terms#new'
end
