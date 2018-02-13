class Player < ActiveRecord::Base
  belongs_to :team
end

1~
Player.limit(10).each do |player|
puts player.name, player.team.name ,player.team.mascot
end

2~
Player.includes(:team).limit(10).each do |player|
  puts player.namem ,layer.team.name, player.team.mascot
end

3~
Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)



5
 Player.joins(:team).where("teams.stadium = 'Staples Center'").select("players.name, teams.stadium, teams.name as team_name")

Player.joins(:team).where("players.name like?" , "Z%").select("players.name, teams.name as teams_name")
