class UsersController < ApplicationController
  def create
  end
  def new2
    @user = User.new(user_params)
    render :new if @user.invalid?
  end
  def new1
  end
  private
  def user_params
    params.require(:user).permit(:name,:email)
  end
end
