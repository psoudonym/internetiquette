Rails.application.routes.draw do

  devise_for :users
  concern :purgable do
    delete :index, :on => :collection, :action => :purge, :as => :purge
  end

  resource  :home
  resource  :try_it
  resources :mappings, :concerns => :purgable
  resources :good_phrases, :concerns => :purgable
  resources :bad_phrases, :concerns => :purgable
  resources :polite_suggestions do
    post :batch_create, :on => :collection, :action => :batch_create, :as => :batch_create
  end

  root :controller => 'homes', :action => 'show'
  
end
