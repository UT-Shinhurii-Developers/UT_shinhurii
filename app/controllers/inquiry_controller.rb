class InquiryController < ApplicationController

before_action :authenticate_user, {only: [:index, :confirm, :thanks]}

  def index
    #入力画面を表示
    @inquiry = Inquiry.new
    render :action => 'index'
  end

  def confirm
    #入力値のテェック
    @inquiry = Inquiry.new(name: params[:name], email: params[:email], message: params[:message])
    if @inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @inquiry = Inquiry.new(name: params[:name], email: params[:email], message: params[:message])
    if params[:change_button]
      render :action => 'index'
    else
      #メール送信
      InquiryMailer.received_email(@inquiry).deliver

      #完了画面を表示
      render :action => 'thanks'
    end
  end
end
