class CustomersController < ApplicationController
	skip_before_filter :require_log_in, only:[:new, :create]

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		@customer.save
		if customer.valid?
			redirect_to products_path, notice: "You are being redirected"
		else
			@errors = customer.errors.full_messages
			render 'new' 
		end
	end

	private
	def customer_params
		params.require(:customer).permit(:name, :email)
	end
end