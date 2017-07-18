class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @greeting = "Hello we have received a message at Dhisha.org"
    @body = ("Dear Admin there is a message at Dhisha.org...!" + "<br /><br />\n" + "Message received from email id: "+ message.email + "<br /><br />\n Content received is as below:<br />\n" + message.body).html_safe
    mail to: "chandu3211@gmail.com", cc: "santosh.sindham@gmail.com", from: "contact@dhisha.org"
  end
end
