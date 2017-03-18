class ContactMailer < ApplicationMailer
  default from: "Portfolio <boltz.justin@gmail.com>"

  def new_contact(message)
    @message = message
    mail(to: 'boltz.justin@gmail.com', subject: "New Portfolio Contact: #{message.name}")
  end
end
