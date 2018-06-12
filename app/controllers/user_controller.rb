class UserController < ApplicationController

before_action :authenticate_user, {only: [:mypage, :logout]}

  def new
    @user = User.new
  end
  def create
    @user = User.new(name: params[:name], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
    else
      render :new
      return
    end
    redirect_to('/user/#{@user.name}')
  end
  def mypage
    @user = User.find_by(name: params[:name])
    if @current_user != @user
      flash[:notice] = "権限がありません"
      redirect_to("/top")
    end
  end
  def login_form
  end
  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/top")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      render :login_form
    end
  end
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/top")
  end
end
