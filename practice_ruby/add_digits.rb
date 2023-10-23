# Given an integer num, repeatedly add all its digits 
# until the result has only one digit, and return it.

# Example 1:

# Input: num = 38
# Output: 2
# Explanation: The process is
# 38 --> 3 + 8 --> 11
# 11 --> 1 + 1 --> 2 
# Since 2 has only one digit, return it.
# Example 2:

# Input: num = 0
# Output: 0

# If num.digits.length is 1 then return num
# 

require 'pry'

def add_digits(num)
  arr = num.digits
  return num if arr.length == 1

  add_digits(arr.sum)
end


p add_digits(38)