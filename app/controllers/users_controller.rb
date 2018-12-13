class UsersController < ApplicationController

  def index
  end

  def new
  end

  def show
    @name = current_user.name
    @user = User.where(user_id: current_user.id)
  end


end
