class HomeController < ApplicationController

before_action :authenticate_user, {only: [:input, :result]}

  def top
  end
  def input
    @class = params[:class]
    case @class 
    when "基礎科目","展開科目","総合科目ABC","総合科目DEF","主題科目" then
    else
      flash[:notice] = "無効なURLです"
      redirect_to("/top")
    end
  end
  def result
  end
end
