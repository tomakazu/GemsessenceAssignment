class UsersController < ApplicationController

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :contact))
    if @user.save
      cookies[:score] = 0
      redirect_to questions_url
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
end
