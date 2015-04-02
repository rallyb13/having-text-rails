class UsersController < ApplicationController

  def index
  end

  def show
    @user = current_user
    @contacts = @user.contacts
  end
end
