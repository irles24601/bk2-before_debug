class DailyMailer < ApplicationMailer
  default from: ENV['USER_NAME']

  def send_mail
    default to: -> { User.pluck(:email) }
    mail(subject: "everyday Bookers!yay!")
  end

end
