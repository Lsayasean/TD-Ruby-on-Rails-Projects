Rails.application.routes.draw do
  #Tell Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action
  #This was created earlier when I ran the controller generator 'bin/rails generate controller Welcome index'
  get 'welcome/index'
  
  # resources method used to declare a standard REST resource. 
  resources :articles

  #Map requests to the root of the application to the welcome controller's index action
  root 'welcome#index'
end
