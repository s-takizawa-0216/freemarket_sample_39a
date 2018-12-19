class UsersController < ApplicationController

  def index
  end

  def new
  end

  def new1
  end

  def new2
  end

  def new3
  end

  def new4
  end

  def create_finish
  end

  def credit
  end

  def show
    @name = current_user.name
    @user = User.where(user_id: current_user.id)
  end


end
