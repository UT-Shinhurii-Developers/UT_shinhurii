# Preview all emails at http://localhost:3000/rails/mailers/report_mailer
class ReportMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/report_mailer/send_number_of_users
  def send_number_of_users
    ReportMailer.send_number_of_users
  end

end
