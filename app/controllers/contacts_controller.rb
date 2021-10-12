class ContactsController < ApplicationController
   skip_before_action :authenticate_user!, only: %i[index create new]
  def index
  end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    authorize @contact
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to contacts_path
    else
      render :new
    end
  end

  def thanks
  end

  private
  def contact_params
    params.permit(:name, :phone, :email, :content)
  end
end
