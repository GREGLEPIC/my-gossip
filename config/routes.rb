Rails.application.routes.draw do

  
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/welcome/:id', to: 'dynamic#index'
  get '/welcome/', to: 'dynamic#new'



  root 'gossips#index'
  get '/', to: 'gossips#index'
 
  

  resources :gossips, only: [:new, :create, :index, :show, :update, :edit, :destroy]
  resources :city
  resources :user

end
