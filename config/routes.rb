Rails.application.routes.draw do
  get 'session/new'

  
  constraints Clearance::Constraints::SignedIn.new do
    resources :articles do
  		resources :comments
  	end

  	resources :dreamers
  end
  
  
  root to: 'main#home'

end
