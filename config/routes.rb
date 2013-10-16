Betastore::Application.routes.draw do
	namespace :admin do
		resources :products
		root :to => 'products#index'
	end



	resources :products, :orders

	resources :subscriptions, only:[:create, :new, :show]

	resources :orders do
		resources :refunds
	end

	get '/sign_up' => 'customers#new', as: 'sign_up'
	post '/sign_up' => 'customers#create'

	get '/log_in' => 'log_ins#new', as: 'log_in'
	post '/log_in' => 'log_ins#create'
	post '/log_out' => 'log_ins#destroy', as: 'log_out'

	root :to => 'products#index'


end
