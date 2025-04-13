require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end
# get("/rock") do
#   moves=["rock", "paper", "scissors"]
#   @computer_play=moves.sample
#   if @computer_play=="rock"
#     @outcome="tied"
#   elsif @computer_play=="paper"
#     @outcome="lost"
#   else 
#     @outcome="won"
#   end
#   erb(:rock)
# end

# get("/paper") do
#   moves=["rock", "paper", "scissors"]
#   @computer_play=moves.sample
#   if @computer_play=="paper"
#     @outcome="tied"
#   elsif @computer_play=="scissors"
#     @outcome="lost"
#   else 
#     @outcome="won"
#   end
#   erb(:paper)
# end

# get("/scissors") do
#   moves=["rock", "paper", "scissors"]
#   @computer_play=moves.sample
#   if @computer_play=="scissors"
#     @outcome="tied"
#   elsif @computer_play=="paper"
#     @outcome="won"
#   else 
#     @outcome="lost"
#   end
#   erb(:scissors)
# end
get("/:action") do
  @our_play=params.fetch("action")
  moves=["rock", "paper", "scissors"]
  @computer_play=moves.sample
  if @computer_play=="scissors"
    @outcome="tied"
  elsif @computer_play=="paper"
    @outcome="won"
  else 
    @outcome="lost"
  end
  erb(:flexible)
end
