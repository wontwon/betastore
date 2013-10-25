class PasswordResetsController < ApplicationController
  # before_filter :require_token


  def create
    customer = Customer.find_by(email: params[:email])
    if customer.nil?
      redirect_to(forgot_password_path, alert: 'Your email was not found')
    else
      token = customer.password_resets.create.token
      p customer
      p customer.password_resets
      p token
      CustomerMailer.password_reset(customer, token).deliver
      redirect_to(forgot_password_path, alert: "You should be receiving a password reset email #{@token}")
    end
  end

  def update
    customer_token = Customer.find_by(:id).password_resets.token
    p customer_token
  end


end

# make token
# save token
# mail token

#check out cancan

#load password_reset in beforefilter
#find token by the ID
#look up password_reset 
#check if token is matched or used
