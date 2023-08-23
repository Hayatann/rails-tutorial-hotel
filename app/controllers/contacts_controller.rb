class ContactsController < ApplicationController
  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to hotels_path
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :body)
  end
end


