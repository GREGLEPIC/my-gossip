Rails.application.routes.draw do

  get 'dynamic/index'
  root 'static_pages#index'
  get '/', to: 'static_pages#index'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/welcome/:id', to: 'dynamic#index'
  get '/welcome/', to: 'dynamic#new'
  get '/gossip/:id', to: 'dynamic#show'
  get '/gossip/user/:id', to: 'dynamic#user'

end
