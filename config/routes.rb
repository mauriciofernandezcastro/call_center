Rails.application.routes.draw do
  resources :control_accesos
  resources :usuarios
  resources :clientes
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "clientes#index"
end
