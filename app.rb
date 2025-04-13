require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
get("/rock") do
  moves=["rock", "paper", "scissors"]
  @computer_play=moves.sample
  if @computer_play=="rock"
    @outcome="tied"
  elsif @computer_play=="paper"
    @outcome="lost"
  else 
    @outcome="won"
  end
  erb(:rock)
end

get("/paper") do
  moves=["rock", "paper", "scissors"]
  @computer_play=moves.sample
  if @computer_play=="paper"
    @outcome="tied"
  elsif @computer_play=="scissors"
    @outcome="lost"
  else 
    @outcome="won"
  end
  erb(:paper)
end

get("/scissors") do
  moves=["rock", "paper", "scissors"]
  @computer_play=moves.sample
  if @computer_play=="scissors"
    @outcome="tied"
  elsif @computer_play=="paper"
    @outcome="won"
  else 
    @outcome="lost"
  end
  erb(:scissors)
end
