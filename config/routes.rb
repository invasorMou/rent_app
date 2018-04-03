Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/apartments', to: 'apartments#index'
  get '/payments/new', to: 'payments#new'
  post '/payments/', to: 'payments#create'
  get '/payments/:id/show', to: 'payments#show'
  get 'tenants/payments', to: 'tenants#show'

end
