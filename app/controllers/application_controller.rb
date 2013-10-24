class ApplicationController < ActionController::Base
  #before_filter :require_log_in

  protected
  def require_log_in
    redirect_to '/log_in' unless logged_in?
  end

  # def require_token
  #   redirect_to '/forgot_password' unless token_present?
  # end


  def logged_in?
    cookies.signed[:customer_id].present?
  end

  # def token_present?
  #   :token.present?
  #   # check if the token matches the token in the database
  #   # if matches, redirect to reset page
  #   # else
  #   # your token does not exist

  # end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
end
