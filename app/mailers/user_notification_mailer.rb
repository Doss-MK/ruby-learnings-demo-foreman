class UserNotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_notification_mailer.welcome.subject
  #
  def welcome user
    Rails.logger.info "\n\nuser #{user.to_json}\n\n"
    @name = user[:name]
    @email = user[:email]

    mail to: @email, subject: "Welcome Mail - From Rails Community"
  end
end