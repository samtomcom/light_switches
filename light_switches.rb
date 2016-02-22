# Swap light switches and see how many are turned on at the end
# SovietKetchup
# v0.0.0

# Getting the number of lights and int array
input = File.open("nums.txt", "r")
lights = Array.new(input.readline.to_i, 0)

lines = File.foreach("nums.txt").count.to_i - 1
lines.times {
  # Getting the range to swap
  range = input.readline.split(" ")
  range[0] = range[0].to_i; range[1] = range[1].to_i
  
  # Setting lower and upper ranges
  if range[0] <= range[1]
    rl = range[0]; ru = range[1]
  else
    rl = range[1]; ru = range[0]
  end
  
  lights.each_with_index{ |v, i| lights[i] = (lights[i]-1).abs if i >= rl && i <= ru }
}

puts lights



