Rails.application.routes.draw do
  
  root  'landscaping#home'
  get 'about', to: 'landscaping#about'

  resources :customers
  # For details on the DSL availale within this file, see http://guides.rubyonrails.org/routing.html
end
