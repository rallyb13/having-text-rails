class ContactsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @contact = @user.contacts.new
  end

  def create
    @user = User.find(params[:user_id])
    @contact = @user.contacts.new(contact_params)
    @contact.user_id = current_user.id
    if @contact.save
      flash[:notice] = "Contact saved successfully."
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def index
    # redirect_to user_path(@user)
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone)
    end

end
