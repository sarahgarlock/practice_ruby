# Given a string s, return the longest 
# palindromic

# substring in s.
# Example 1:

# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.
# Example 2:

# Input: s = "cbbd"
# Output: "bb"

# If s.reverse == s, then return s
# s.split, iterate over and << into new_arr until new_array.reverse == s

require 'pry'

def longest_palindrome(s)
  return s if s.reverse == s
  sep = s.split('')
  new_arr = []
  
  # until new_arr.reverse == new_arr
  sep.each_with_index do |let, idx|
    has_duplicate = sep[(idx + 1)..-1].include?(let)

  end
end

p longest_palindrome("babb")



