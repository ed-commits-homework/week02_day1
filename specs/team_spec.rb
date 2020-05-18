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

  def test_find_player_positive
    team = Team.new("The Team", ["player"], "The Coach")
    assert_equal(true, team.find_player("player"))
  end

  def test_find_player_negative
    team = Team.new("The Team", ["player"], "The Coach")
    assert_equal(false, team.find_player("other player"))
  end
end
