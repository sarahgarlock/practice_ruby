# Given a string s, find the length of the longest 
# substring
# without repeating characters.

# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

# return s if s.uniq.size == s.size

require 'pry'

# def length_of_longest_substring(s)
#   sep = s.split('')
#   arr = []

#   return s.size if sep.uniq.size == s.size

#   sep.each_with_index do |let, idx|
#     if let != sep[idx + 1] && !arr.include?(let)
#       arr << let
#     else
#       let == sep[idx + 1]
#     end
#   end
#   arr.size
#   binding.pry
# end

def length_of_longest_substring(s)
  char_index = {}  # A hash to store the most recent index of each character
  max_length = 0  # The maximum length of the substring without repeating characters
  start = 0  # The start index of the current substring

  s.each_char.with_index do |char, end_index|
    if char_index.key?(char) && char_index[char] >= start
      binding.pry
      # If the character is repeated and its last occurrence is within the current substring
      # Move the start index to the right of the last occurrence
      start = char_index[char] + 1
    end
    
    # Update the index of the current character
    char_index[char] = end_index

    # Calculate the current substring length and update the maximum length
    current_length = end_index - start + 1
    max_length = [max_length, current_length].max
  end

  max_length
end

p length_of_longest_substring("pwwkew")