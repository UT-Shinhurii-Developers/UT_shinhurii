class HomeController < ApplicationController

before_action :authenticate_user, {only: [:input, :result]}

  def top
    render :layout => 'top_layout'
  end
  def input
    if params[:class]
      @class = params[:class]
    else
    end
    case @class
    when "必修科目","基礎科目","総合科目L","総合科目ABC","総合科目DEF","その他の総合科目" then
      @score = Score.new
      render :layout => 'input_layout'
    else
      flash[:notice] = "無効なURLです"
      redirect_to("/")
    end
  end
  def result
  end
end
