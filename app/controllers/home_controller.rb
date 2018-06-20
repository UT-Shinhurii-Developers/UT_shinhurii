class HomeController < ApplicationController

before_action :authenticate_user!, {only: [:input, :result, :department]}

  def index
    render :layout => 'index_layout'
  end
  def input
    if params[:class].present?
      @class = params[:class]
    else
      @class_add = params[:class_add]
    end
    if @class.present?
      case @class
      when "基礎科目","総合科目L","総合科目A","総合科目B","総合科目C","総合科目D","総合科目E","総合科目F" then
        @score = Score.new
        render :layout => 'input_layout'
      else
        flash[:notice] = "無効なURLです"
        redirect_to("/")
      end
    else
      case @class_add
      when "基礎科目","総合科目L","総合科目A","総合科目B","総合科目C","総合科目D","総合科目E","総合科目F" then
        @score = Score.new
      else
        flash[:notice] = "無効なURLです"
        redirect_to("/")
      end
    end
  end
  def department
  end
  def result
  end
end
