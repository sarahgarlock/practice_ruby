# CODE WARS
# We need the ability to divide an unknown integer into a given number of even parts - 
# or at least as even as they can be. The sum of the parts should be the original value, 
# but each part should be an integer, and they should be as close as possible.

# Complete the function so that it returns an array of integers representing the parts. 
# If the input number is too small to split it into requested amount of parts, 
# the additional parts should have value 0. Ignoring the order of the parts, 
# there is only one valid solution for each input to your function!

# Example:
# splitInteger(20, 6)   # returns [3, 3, 3, 3, 4, 4]
# Inputs
# The input to your function will always be valid for this kata.


# PLAN 
# if num % parts == 0 then return an array of num / parts


require 'pry'

return 0 if num < parts
def splitInteger(num, parts)
  return [0] * parts if num < parts

  div = (num / parts).round
  mod = (num % parts)

  if mod == 0
    return Array.new(parts, div)
  else
    result = Array.new(parts, div)
    for i in 1..mod do
      result[i - 1] += 1
    end
    return result
  end
end

# def splitInteger(num,parts)
#   div = num / parts
#   rem = num % parts
#   [div+1] * rem + [div] * (parts - rem)
# end


p splitInteger(20, 6)