class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to:"jkerbrat86@gmail.com", subject: "Nous contacter"
  end
end
