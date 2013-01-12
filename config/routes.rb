Engne::Application.routes.draw do

  devise_for :members

  get "index" => "home#index"

  
  get "categories/new" => "home#index"
  get "/categories/:id/edit(.:format)" => "categories#show"
  delete "/categories/:id" => "categories#show"

  root :to => "home#index", :as => "index"
  
  resources :categories
  resources :projects
  resources :members, :only => [:show], :as => "show_member"

  end
