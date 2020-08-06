class DailyMailer < ApplicationMailer

  def send_mail
    mail(bcc: User.pluck(:email), subject: "everyday Bookers!yay!")
  end

end
