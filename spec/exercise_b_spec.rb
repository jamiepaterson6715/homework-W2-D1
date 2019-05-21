require('minitest/autorun')
require('minitest/rg')
require_relative('../exercise_b')

class TestTeam < MiniTest::Test

  def setup()

    players = ["Tim","Matt","Landry","Jason","Smash"]
    @team = Team.new("Coach Taylor", "Dillion Panthers", players)
end

def test_team_has_name()
  assert_equal("Dillion Panthers", @team.team_name())
end

def test_team_has_coach
  assert_equal("Coach Taylor", @team.coach())
end

def test_team_has_players
  assert_equal(5, @team.players().count())
end

def test_team_has_points
  assert_equal(0, @team.points())
end

def test_new_coach()
  @team.coach = "Wade Aikman"
  assert_equal("Wade Aikman", @team.coach())
end

def test_new_player()
 new_player = "JD McCoy"
 @team.add_player(new_player)
 assert_equal(6, @team.players().count())
end

end
