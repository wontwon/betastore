class ResetPasswordsController < ApplicationController
  # before_filter :require_token

  def update
    token = Customer.find_by(id: params[:id]).password_resets.first.token
    token_clear = Customer.find_by(id: params[:id]).password_resets.clear
    customer = Customer.find_by(id: params[:id])
    if params[:token] == token
      customer.update(password: params[:password], password_confirmation: params[:password_confirmation])
      p "SUHHHWEET"
      token_clear
      redirect_to(log_in_path)
    else
      redirect_to(products_path)
    end
  end
end

#check out cancan

#load password_reset in beforefilter
#find token by the ID
#look up password_reset 
#check if token is matched or used

# if the token matches
# search for the user by ID
# change his update his password to this 
# display message stating that the password has been updated