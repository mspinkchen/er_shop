class UserMailer < ApplicationMailer
  default from: "EnjoyRice <enjoyrice.tw@gmail.com>"

  def notify_contact_create(contact)
    @contact = contact
    @content = "EnjoyRice有一則新建議"
    @name = contact.name
    @phone = contact.phone
    @message = contact.message

    mail to: "arpinkchen@gmail.com",
    subject: "Customer Messages | 顧客建議: #{@contact.id}"
  end

end

