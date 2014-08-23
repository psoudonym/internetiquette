Rails.application.routes.draw do

  devise_for :users
  concern :purgable do
    delete :index, :on => :collection, :action => :purge, :as => :purge
  end

  resources :mappings, :concerns => :purgable
  resources :good_phrases, :concerns => :purgable
  resources :bad_phrases, :concerns => :purgable
  resources :polite_suggestions do
    post :batch_create, :on => :collection, :action => :batch_create, :as => :batch_create
  end

  root :controller => 'mappings', :action => 'new'
  
end
