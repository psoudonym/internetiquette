Rails.application.routes.draw do

  resources :mappings
  resources :good_phrases
  resources :bad_phrases

  root :controller => 'mappings', :action => 'new'

  concern :purgable do
    delete :index, :on => :collection, :action => :purge, :as => :purge
  end

  resource :admin
  namespace :admin do
    resources :mappings, :concerns => :purgable
    resources :good_phrases, :concerns => :purgable
    resources :bad_phrases, :concerns => :purgable
  end
end
