class Admin::ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all.order(created_at: :desc)
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to admin_contacts_path
    flash[:alert]="Message was deleted"
  end

end
