Rails.application.routes.draw do
  root 'landing#index'
  post '/login', to: 'landing#login', as: 'landing_post'
  get '/home', to: 'home#index', as: 'home'
  get '/home/customers', to: 'customers#index', as: 'customers'
  get '/home/customers/:id', to: 'customers#show', as: 'customer'
  get '/invoices', to: 'invoices#index', as: 'invoices'
  get '/invoices/begin', to: 'invoices#begin', as: 'begin_invoice'
  get '/invoices/new', to: 'invoice#new', as: 'new_invoice'
  get '/invoices/search', to: 'invoices#search', as: 'search_invoices'
  get '/invoices/:id', to: 'invoices#show', as: 'invoice'
  get '/invoices/:id/edit', to: 'invoices#edit', as: 'edit_invoice'
  post '/invoices', to: 'invoices#new', as: 'post_new_invoice'
  post '/invoices/create', to: 'invoices#create', as: 'create_invoice'
  get '/products', to: 'products#index', as: 'products'
  get '/products/search', to: 'products#search', as: 'search_products'
  get '/products/inventory', to: 'products#inv', as: 'user_inv_products'
  get '/products/:id', to: 'products#show', as: 'product'

  resources :invoices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
