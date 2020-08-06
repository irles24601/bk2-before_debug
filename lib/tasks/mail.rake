namespace :mail do
  desc 'Run tests'
  task test: :environment do
    DailyMailer.send_mail.deliver_now
  end
end