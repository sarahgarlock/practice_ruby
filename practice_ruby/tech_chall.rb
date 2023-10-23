# Instructions
# In this challenge, you are working with a computer simulation of a mobile robot. The robot moves on a plane, and its movements are described by a command string consisting of one or more of the following letters:

# G instructs the robot to move forward one step
# L instructs the robot to turn left
# R instructs the robot to turn right
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.

#     #Ruby
#     return_to_origin?("GRGRGRG")
  # ('G', 'R','G', 'R','G', 'R')
#     => true

# size of grid?
# cannot go backwards
# doesn't say which way we are facing right away

# a b c d
# e f g h
# i j k L
# m n o p

# a b
# c d

require 'pry'

class TechChall
  
  def starting_location(location)
    binding.pry
    location
  end
end

# Check starting position

# if G and robot has available letter, move forward
# if G and robot goes off the grid, cannot move forward, turn right R
  # check right, if availabe letter, move forward or G
  # if not right, then turn left and move forward or G

# Check ending position to see if matches starting

def return_to_origin?(movement)
  # ("GRGRGRG")
  # split string into individual elments, iterating over each and applying movement
  # ('G', 'R','G', 'R','G', 'R')
  
  # G instructs the robot to move forward one step
  # L instructs the robot to turn left
  # R instructs the robot to turn right\
  "G" 
  

end

