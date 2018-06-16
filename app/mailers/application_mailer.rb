class ApplicationMailer < ActionMailer::Base
  default from:     "UT.shinhurii@gmail.com",
          bcc:      "hatsuisa0921@gmail.com",
          layout: 'mailer'
end
