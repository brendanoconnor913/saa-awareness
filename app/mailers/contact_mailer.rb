class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.feedback.subject
  #
  def feedback(message)
    @comment = message.content
    @from = message.email

    mail to: "brendan.oconnor.913@gmail.com", subject: "Feedback from SAA-site"
  end
end
