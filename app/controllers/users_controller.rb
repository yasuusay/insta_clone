class UsersController < ApplicationController
  
  skip_before_action :require_login
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:success] = 'ユーザーを作成しました'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザーの作成に失敗しました'
      render :new
    end
  end
  
    
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
