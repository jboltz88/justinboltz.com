class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver
      flash.now[:notice] = "Thank you for your message. I will get back to you soon!"
      redirect_to :root
    else
      flash.now[:alert] = "Could not send message, please try again."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
