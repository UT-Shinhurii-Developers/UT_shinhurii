class UserController < ApplicationController

before_action :authenticate_user, {only: [:mypage, :logout, :edit, :update, :add]}

  def new
    @user = User.new
  end
  def create
    if request.post?
      @user = User.new(params[:user].permit(:name, :karui, :password))
      @user.save
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "登録しました！"
        redirect_to("/top")
      else
        render :new
        return
      end
    else
      redirect_to("/user/new")
    end
  end
  def mypage
    @user = User.find_by(name: params[:name])
    if @current_user != @user
      flash[:notice] = "権限がありません"
      redirect_to("/top")
    end
    render :layout => 'mypage_layout'
  end
  def login_form
  end
  def login
    if request.post?
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:notice] = "ログインしました"
        redirect_to("/top")
      else
        @error_message = "ユーザ名またはパスワードが間違っています"
        render :login_form
      end
    else
      redirect_to("/login_form")
    end
  end
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/top")
  end
  def add
    @class = params[:class]
    case @class
    when "必修科目","基礎科目","総合科目L","総合科目ABC","総合科目DEF","その他の総合科目" then
      return
    else
      flash[:notice] = "無効なURLです"
      redirect_to("/top")
    end
  end
end
