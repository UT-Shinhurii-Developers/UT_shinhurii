require 'test_helper'

class ReportMailerTest < ActionMailer::TestCase
  test "send_number_of_users" do
    mail = ReportMailer.send_number_of_users
    assert_equal "Send number of users", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
