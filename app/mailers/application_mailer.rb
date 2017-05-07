class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@overwine.io"
  layout "mailer"

  def lets_talk(email, message)
    @email, @message = email, message
    mail to: "jeff@humani.se", subject: "[#{Rails.env}] Overwine message from #{email}"
  end
end
