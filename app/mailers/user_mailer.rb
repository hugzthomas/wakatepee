class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'You have been chosen !')
    # This will render a view in `app/views/user_mailer`!
  end
end
