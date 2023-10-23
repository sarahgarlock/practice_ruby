# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

# I can be placed before V (5) and X (10) to make 4 and 9. 
# X can be placed before L (50) and C (100) to make 40 and 90. 
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.

# Example 1:
# Input: s = "III"
# Output: 3
# Explanation: III = 3.

# Example 2:
# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.

# Example 3:
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

# Plan
# Start with a hash { "Roman" => Int }
# Use conditionals to get correct output
# Split string, 
# if I before V = 4
# if I before X = 9
# if X before D = 40
# if X before M = 90
# if C before D = 400
# if C before M = 900

require 'pry'


def roman_to_int(s)
  roman = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  start = 0
  str = s.split("")

  str.each_with_index do |let, idx|
    if idx < str.length - 1 && roman[let] < roman[str[idx + 1]]
      # idx < str.length - This condition checks if we are not at the last character of 
      # the input Roman numeral string s. It's important to avoid checking 
      # the next character when you're at the last character because there's 
      # no character after it to compare.

      # roman[let] < roman[str[idx + 1]]: This part of the condition checks 
      # if the current Roman numeral let has a smaller value than the next
      # Roman numeral str[idx + 1]. This is the key part that handles 
      # the subtractive cases in Roman numerals.
      start -= roman[let]
    else
      start += roman[let]
      # If the condition is false, it means that the current numeral 
      # is not part of a subtractive pair, so you simply add its value to the total.
    end
  end

  start
end


p roman_to_int("MCMXCIV")
