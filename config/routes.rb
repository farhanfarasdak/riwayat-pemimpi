Rails.application.routes.draw do
  get 'session/new'

  
  constraints Clearance::Constraints::SignedIn.new do
    resources :articles do
  		resources :comments
  	end

  	resources :dreamers
  end
  
  
  root to: 'main#home'
  get '/articles/:id', to: 'articles#show'
  get '/articles', to: 'articles#list'
end
