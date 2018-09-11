require ('Minitest/autorun')
require ('Minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < Minitest::Test

def setup
  @sports_team = SportsTeam.new("Rangers", ["Laudrop", "Hately", "Walters", "Gio"], "Walter", 0)
end

def test_get_team_name
assert_equal("Rangers", @sports_team.team_name)
end
def test_get_players
  assert_equal(["Laudrop", "Hately", "Walters", "Gio"], @sports_team.players)
end
def test_get_coach
  assert_equal("Walter", @sports_team.coach)
end
def test_set_coach
  @sports_team.coach = "Alex"
  result = @sports_team.coach
  assert_equal("Alex", result)
end

def test_add_new_player
  @sports_team.add_new_player("Albertz")
assert_equal(5, @sports_team.players.length)
end
def test_find_player__found
  result = @sports_team.find_player("Laudrop")
  assert_equal("Laudrop found", result)
end
def test_find_player__not_found
  result = @sports_team.find_player("Stevens")
  assert_equal("Stevens not found", @sports_team.find_player("Stevens"))
end
def test_get_points
  assert_equal(0, @sports_team.points)
end

def test_increase_points_for_win
  @sports_team.points_adjustment("win")
  assert_equal(3, @sports_team.points)
end
def test_team_loses
  @sports_team.points_adjustment("lose")
assert_equal(0, @sports_team.points)
end
end
