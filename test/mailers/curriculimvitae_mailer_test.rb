require 'test_helper'

class CurriculimvitaeMailerTest < ActionMailer::TestCase
  test "new_curriculumvitae" do
    mail = CurriculimvitaeMailer.new_curriculumvitae
    assert_equal "New curriculumvitae", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
