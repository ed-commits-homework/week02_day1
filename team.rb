class Team
  attr_reader :name, :players, :points
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player_name)
    @players << player_name
  end

  def find_player(player_name)
    return @players.include? player_name
  end

  def update_score(game_result)
    @points += 1 if game_result == "win"
    @points -= 1 if game_result == "lose"
  end
end
