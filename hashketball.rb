# Write your code here!

def game_hash
  {
    :home => {
      :team_name =>"Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 1
      },
      {
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12, 
        :blocks => 12, 
        :slam_dunks => 7
      },
      {
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 15
      },
      {
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3, 
        :blocks => 8, 
        :slam_dunks => 5
      },
      {
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4, 
        :blocks => 11, 
        :slam_dunks => 1
      }
        ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players =>[
        {
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2, 
        :blocks => 7, 
        :slam_dunks => 2
      }, 
      {
        :player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22, 
        :blocks => 15, 
        :slam_dunks => 10
      }, 
      {
        :player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4, 
        :blocks => 5, 
        :slam_dunks => 5
      }, 
      {
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1, 
        :blocks => 1, 
        :slam_dunks => 0
      }, 
      {
        :player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7, 
        :blocks => 5, 
        :slam_dunks => 12
      }, 
        ]
    }
  }
end 

def num_points_scored(player_name)
  game = game_hash
  game.each do |one, team|
    team[:players].each do |player|
      if player[:player_name] == player_name
        return player[:points]
      end 
    end 
  end 
end

def shoe_size(player_name)
  game = game_hash
  game.each do |one, team|
    team[:players].each do |player|
      if player[:player_name] == player_name
        return player[:shoe]
      end 
    end 
  end 
end 

def team_colors(team_name)
  game = game_hash
  game.each do |one, team|
    if team[:team_name] == team_name
      return team[:colors]
    end
  end 
end 

def team_names
  game = game_hash
  teams = []
  game.each do |one, team|
    teams << team[:team_name]
  end
  return teams
end

def player_numbers(team_name)
  game = game_hash
  jerseys = []
  game.each do |one, team|
    if team[:team_name] == team_name
      team[:players].each do |player|
        jerseys << player[:number]
    end 
  end
end 
return jerseys
end 

def player_stats(player_name)
  game = game_hash
  stats = {}
  game.each do |one, team|
    team[:players].each do |player|
      if player[:player_name] == player_name
        player.delete(:player_name)
        return player 
      end 
  end
end 
end 

def big_shoe_rebounds
  game = game_hash
  bigger_shoe = game[:home][:players][0][:shoe]
  rebounds = 0
  game.each do |one, team|
    team[:players].each do |player|
      if player[:shoe] > bigger_shoe
        bigger_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end 
  end
end 
return rebounds
end 

def most_points_scored
  game = game_hash
  most_points = game[:home][:players][0][:points]
  best_player = ""
  game.each do |one, team|
    team[:players].each do |player|
      if player[:points] > most_points
        most_points = player[:points]
        best_player = player[:player_name]
      end 
  end
end 
return best_player
end 

def winning_team
  game = game_hash
  winning_team = game[:home][:team_name]
  total = 0
  game.each do |one, team|
    first_total = 0
    team[:players].each do |player|
     first_total += player[:points]
    end
    if total == 0 
      total=first_total
    elsif first_total > total  
      winning_team = team[:team_name]
    end 
end 
return winning_team
end 

def player_with_longest_name
game = game_hash
  longest_name = game[:home][:players][0][:player_name]
  game.each do |one, team|
    team[:players].each do |player|
      if player[:player_name].length > longest_name.length
        longest_name = player[:player_name]
      end 
  end
end 
return longest_name
end 

def longest_name_steals_a_ton
  longest_name = player_with-longest_name 
  
end 


