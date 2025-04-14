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
  if @computer_play== @our_play
    @outcome="tied"
  elsif (@our_play == "scissors" and @computer_play=="paper") or (@our_play == "paper" and @computer_play=="rock") or (@our_play == "rock" and @computer_play=="scissors")
    @outcome="won"
  elsif @our_play == "fire"
    @outcome="won, fire beats everything"     
  elsif (@our_play!= "rock") and (@our_play!= "paper")  and (@our_play!= "scissors") and (@our_play!= "fire") 
    @outcome= "lost, invalid action"
  else 
    @outcome="lost"
  end
  erb(:flexible)
end

#ALSO WITH UNLESS - STUDY BUDDY
# get("/:action") do
#   @our_play = params.fetch("action")
#   moves = ["rock", "paper", "scissors"]

#   # Check for invalid action right away.
#   unless moves.include?(@our_play) or @our_play == "fire"
#     @outcome = "lost, invalid action"
#   else  
#     @computer_play = moves.sample
    #RESTO DE IFS DENTRO 
#     if @computer_play == @our_play
#       @outcome = "tied"
#     elsif @our_play == "fire"
#       @outcome = "won, fire beats everything"
#     elsif (@our_play == "scissors" and @computer_play == "paper") or
#           (@our_play == "paper" and @computer_play == "rock") or
#           (@our_play == "rock" and @computer_play == "scissors")
#       @outcome = "won"
#     else 
#       @outcome = "lost"
#     end
#   end

#   erb(:flexible)
# end
