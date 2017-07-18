class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @greeting = "Hi"
    @body = "Hi," + "\n" + "Message from email id: "+ message.email + "\n" + message.body
    mail to: "chandu3211@gmail.com", cc: "santosh.sindham@gmail.com", from: "contact@dhisha.org"
  end
end
