class UserController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, notice: "Signed up successfully."
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def destroy
  end
end
