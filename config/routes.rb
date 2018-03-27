Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/tenants', to: 'tenants#index'
  get '/payments/new', to: 'payments#new', as: 'new_payments'
  post '/payments', to: 'payments#create'

end
