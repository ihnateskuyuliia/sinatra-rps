require "sinatra"
require "sinatra/reloader" #not to shut down the server

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
