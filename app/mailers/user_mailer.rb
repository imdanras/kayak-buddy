class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.email_sender.subject
  #
  def email_sender
    @greeting = "Hello!" 

    mail to: "to@ga.co"
  end
end
