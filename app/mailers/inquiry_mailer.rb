class InquiryMailer < ActionMailer::Base
  default from: "ut.shinhurii@gmail.com",   # 送信元アドレス
          bcc: "hatsuisa0921@gmail.com", #送信先アドレス
          layout: "mailer"

  def received_email(inquiry)
    @inquiry = inquiry
    mail to: @inquiry.email, subject: 'お問い合わせを承りました'
  end

end
