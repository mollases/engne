Engne::Application.routes.draw do

  # get "page/about" => "page#about", :path => "/about"
  # get "page/privacy" => "page#about", :privacy => "/privacy"
  # get "page/terms" => "page#terms", :path => "/terms"
  # get "page/help" => "page#help", :path => "/help"

  devise_for :members, :controllers => { :registrations => "members/registrations" }

  get "index" => "home#index"

  get "categories/new" => "home#index"
  get "/categories/:id/edit(.:format)" => "categories#show"
  delete "/categories/:id" => "categories#show"

  root :to => "home#index", :as => "index"
  
  resources :categories
  resources :projects do
    member do
      get 'donate' => 'transact#donate'
      get 'invest' => 'transact#invest'
      get 'sell' => 'transact#sell'
      get 'buy' => 'transact#buy'
    end
  end
  
  resources :members, :only => [:show], :as => "member"

  end
