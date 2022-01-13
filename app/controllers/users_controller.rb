class UsersController < ApplicationController

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :contact))
    if @user.save
      redirect_to questions_url
    end
  end

  def new
    @user = User.new
  end
end
