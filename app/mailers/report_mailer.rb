class ReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.send_number_of_users.subject
  #
  def send_number_of_users(number)
    @number = number
    mail subject: 'UT_Shinhurii登録者数'
  end
end
