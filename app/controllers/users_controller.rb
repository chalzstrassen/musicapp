class UsersController < ApplicationController
  def new
    if logged_in?
      redirect_to user_url(current_user)
    else
      @user = User.new
    end
  end

  def edit
    @user = User.find_by(params[:id])
  end

  def show
    @user = User.find_by(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "You have successfully signed up."
      redirect_to user_url(user)
    else
      flash.now[:errors] = user.errors.full_messages
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:password, :email)
    end
end
