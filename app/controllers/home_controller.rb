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
    when "基礎科目","総合科目L","総合科目ABC","総合科目DEF","総合科目ABCD","総合科目EF" then
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
