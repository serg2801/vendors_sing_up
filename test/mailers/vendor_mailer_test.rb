require 'test_helper'

class VendorMailerTest < ActionMailer::TestCase
  test "signup_cinfirmation" do
    mail = VendorMailer.signup_cinfirmation
    assert_equal "Signup cinfirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
