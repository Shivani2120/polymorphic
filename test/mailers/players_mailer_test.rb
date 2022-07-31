require "test_helper"

class PlayersMailerTest < ActionMailer::TestCase
  test "new_players" do
    mail = PlayersMailer.new_players
    assert_equal "New players", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
