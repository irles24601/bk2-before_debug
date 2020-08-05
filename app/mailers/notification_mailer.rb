class NotificationMailer < ApplicationMailer
  default from: ENV['USER_NAME']

  def send_confirm_to_user(user)
    @user = user
    @url = "http://localhost:3000/users/#{@user.id}"
    mail(subject: "COMPLETE join your address" ,to: @user.email)
  end
end
