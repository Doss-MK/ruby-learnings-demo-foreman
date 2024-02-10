# Preview all emails at http://localhost:3000/rails/mailers/user_notification_mailer
class UserNotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_notification_mailer/welcome
  def welcome
    UserNotificationMailer.welcome
  end

end
