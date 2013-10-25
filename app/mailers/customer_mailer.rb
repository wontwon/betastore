class CustomerMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.password_reset.subject
  #
  def password_reset(customer, token)
    @greeting = "Hi"
    @token = token
    @id = customer.id
    mail to: customer.email
  end
end
