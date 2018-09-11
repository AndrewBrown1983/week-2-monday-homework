class SportsTeam

attr_accessor :team_name, :players, :coach, :points
def initialize(team_name, players, coach, points)
@team_name = team_name
@players = players
@coach = coach
@points = points
end

# def get_team_name
# return @team_name
# end
# def get_players
#   return @players
# end
# def get_coach
#   return @coach
# end
# def set_coach(new_coach)
#   @coach = new_coach
# end
def add_new_player(new_player)
  @players << new_player
end

def find_player(player_find)
  for player in @players
    if player == player_find
      return "#{player_find} found"
    else
      return "#{player_find} not found"
    end
end
end

def points_adjustment(result)
  @points += 3 if result == "win"
  
end
end
