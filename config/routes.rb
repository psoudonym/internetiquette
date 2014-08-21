Rails.application.routes.draw do

  resources :mappings
  resources :good_phrases
  resources :bad_phrases

  root :controller => 'mappings', :action => 'new'

  namespace :admin do
    resources :good_phrases
    resources :bad_phrases
  end
end
