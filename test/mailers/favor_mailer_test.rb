require 'test_helper'

class FavorMailerTest < ActionMailer::TestCase
  test "send_favor" do
    mail = FavorMailer.send_favor
    assert_equal "Send favor", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
