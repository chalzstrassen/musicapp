class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.find_by(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "You have successfully signed up."
      render html: "Created user"
    else
      flash.now[:errors] = user.errors.full_messages
      render html: "Invalid user"
    end
  end

  private
    def user_params
      params.require(:user).permit(:password, :email)
    end
end
