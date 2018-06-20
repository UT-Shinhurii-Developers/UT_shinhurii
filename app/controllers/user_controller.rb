class UserController < ApplicationController

before_action :authenticate_user!, {only: [:mypage, :logout, :edit, :update, :add, :edit, :department]}

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
        redirect_to("/")
      else
        render :new
        return
      end
      @number = @user.id
      if @number%10 == 0 && @number <= 100
        ReportMailer.send_number_of_users(@number).deliver
        flash[:notice] = "あなたは記念すべき" + @number.to_s + "人目の登録者です。"
      elsif @number % 100 == 0
        ReportMailer.send_number_of_users(@number).deliver
        flash[:notice] = "あなたは記念すべき" + @number + "人目の登録者です。おめでとうございます！！！"
      end
    else
      redirect_to("/user/new")
    end
  end
  def mypage
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
        redirect_to("/")
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
    redirect_to("/")
  end
  def add
    @class = params[:class]
    case @class
    when "基礎科目","総合科目L","総合科目A","総合科目B","総合科目C","総合科目D","総合科目E","総合科目F" then
      return
    else
      flash[:notice] = "無効なURLです"
      redirect_to("/")
    end
  end
  def edit
    @score = Score.find_by(id:params[:id])
  end
  def department
    @deps = ["","",""]
    @deps[0] = params[:check][0]
    if params[:check][1].present?
      @deps[1] = params[:check][1]
    end
    if params[:check][2].present?
      @deps[2] = params[:check][2]
    end
    User.update_all(:dep1 => @deps[0], :dep2 => @deps[1], :dep3 => @deps[2])
    redirect_to("/result")
  end
end
