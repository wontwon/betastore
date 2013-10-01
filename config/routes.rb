Betastore::Application.routes.draw do
  resources :inventory
  root :to => 'inventory#index'
end
