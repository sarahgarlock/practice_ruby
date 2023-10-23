# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false


# Constraints:

# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

# --------------------------------------------------

# Must start with an open bracket
# Mush immediately follow with a closing bracket of the same type
# Can only include (, ), {, }, [, ]

require 'pry'

def is_valid(s)
  indiv_chars = s.split("")
  binding.pry 
  # does it only include valid characters?

end

s = "()[]{}"

p is_valid(s)