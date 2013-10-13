class LogInsController < ApplicationController
	# skip_before_filter :require_log_in

	def create
		customer = Customer.find_by(email: params[:email])
		if customer && customer.authenticate(params[:password_digest])
			cookies.signed[:customer_id] = customer.id
			redirect_to(products_path)
		else
			# in the alert be more expressive about "WHY" login failed
			# hint customer.errors.full_messages
			redirect_to(log_in_path, alert: 'Log In Failed')
			# minor note try to either choose to use () when you are calling methods or don't
			# consistincy with this is import
			# redirect_to(log_in_path, alert: 'Log In Failed')
			# redirect_to log_in_path, alert: 'Log In Failed'
			# very least make sure you keep consistancy within the same controller action
		end
	end

	def destroy
		cookies.delete(:email)
		redirect_to(products_path)		
	end


end