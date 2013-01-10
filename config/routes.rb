Engne::Application.routes.draw do

  devise_for :members, :controllers => {:registrations => 'registrations'}

  get "index" => "home#index"
  get "members/:id" => "members#show"
  
  get "categories/new" => "home#index"
  get "/categories/:id/edit(.:format)" => "categories#show"
  delete "/categories/:id" => "categories#show"

  root :to => "home#index", :as => "index"
  
  resources :categories
  resources :projects

  end
