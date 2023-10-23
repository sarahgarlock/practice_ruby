# A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

# Your goal is to write a method/function that takes in an integer and returns the next palindrome. It is safe to assume you are working with only whole numbers, no decimals, and no negatives.

# Example

#     #Ruby
#     find_next_palindrome(100)
#     => 101

#     find_next_palindrome(101)
#     => 111

# Palindrome - same reverse and forward
# As an integer increases by 1, is it a Palindrome?
  # Return if true, if not continue to increase by 1 and check again


# Loop
# .succ - check to see if only used on strings
# .reverse - can only reverse strings, convert integers into strings and back in integers

require 'pry'

def find_next_palindrome(num)
  # expected to be +1 from num
  successor = num.succ

  until successor.to_s.reverse.to_i == successor
    successor = successor.succ
  end
  successor
end

puts find_next_palindrome(12839)

