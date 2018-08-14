Rails.application.routes.draw do
  get 'session/new'

  resources :articles do
  	resources :comments
  end
  
  root to: 'main#home'

end
