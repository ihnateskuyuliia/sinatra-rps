require "sinatra"
require "sinatra/reloader" #not to shut down the server
get("/") do
  erb(:main_page)
end

#ROCK
get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else 
    @outcome = "won"
  end
  erb(:rock)
end

#PAPER
get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else 
    @outcome = "lost"
  end
  erb(:paper)
end

#SCISSORS
get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else 
    @outcome = "tied"
  end
  erb(:scissors)
end
