class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end


  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Message was successfully created 訊息傳送成功"
      redirect_to contacts_path
      UserMailer.notify_contact_create(@contact).deliver_now!

    else
      flash.now[:alert] = "Message was failed created 請重新檢查欄位"
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end
  
end
