Rails.application.routes.draw do
  resources :clientes
  root 'clientes#index'
  resources :produtos
  #root 'produtos#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
