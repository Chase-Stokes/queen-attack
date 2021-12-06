require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require 'pry'

def queen_attack?(start_point, end_point)
  if start_point[0] == end_point[0]
    true
  elsif start_point[1] == end_point[1]
    true
  elsif (start_point[1] - end_point[1]).abs === (start_point[0] - end_point[0]).abs
    true 
  else
    false
  end
end