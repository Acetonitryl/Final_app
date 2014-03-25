class UserMailer < ActionMailer::Base
  default from: 'notifications@example.com'

  def welcome_email(email_address)
  	@email = email_address
	 	mail(to: email_address, subject: 'Gratulacje! Rejestracja powiodła się')
  end
end
