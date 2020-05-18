require("minitest/autorun")
require("minitest/reporters")
require_relative("../team")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test
  def test_add_player
    team = Team.new("The Team", [], "The Coach")
    team.add_player("player")
    assert_equal(1, team.players.length)
  end
end
