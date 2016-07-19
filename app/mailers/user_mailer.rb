class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.email_sender.subject
  #
  def email_sender
    @greeting = "Hello!" 

    #mail to: "to@ga.co"
    mail(
      :subject => 'Hello from Kayak Buddy!',
      :to  => params[:to_email],
      :from => 'KAYAK',
      :html_body => params[:from_email],
      :track_opens => 'true')
  end
end
