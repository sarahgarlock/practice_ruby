# @param {String[]} strs
# @return {String}

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

# Return the longest common prefix among an array of strings
# Return empty string if no common prefix is given
# Only check first element, won't matter if rest don't have a common prefix
# Iterate over first element with .each_char to see if the rest of the elements have the same character at the same index
# If they do, add that character to a new string
# If they don't, return the string
# If the array is empty, return empty string

# .first - get the first element

# .each_char - iterate through each character of the first element
# .all? - check to see if all elements have the same character at the same index
# .include? - check to see if the character is included in the rest of the elements
# .slice - slice the first element to the length of the common prefix
# .empty? - check to see if the array is empty

require "pry"

strs = ["flower","flow","flight"]

def longest_common_prefix(strs)
  #longest prefix cant be longer than shortest word, find shortest word in list os strings
  shortest_word = strs.min_by(&:length)
  shortest_word_len = shortest_word.length #
  longest_preffix = ""
  shortest_word_len.times do |i| #remember we cant have a prefix longer than the shortest word, so at maximum we will loop the shortest words len
      current_elem = shortest_word[i]
      if strs.all? {|str| str[i] == current_elem} 
        #man I love ruby, this should be self explanitory but if it isnt we basically check each string at [i] and if they are all equal add to prefix, before incrimenting i, if not break thats as long as it gets
          longest_preffix << current_elem
      else
          break
      end 

  end 
  longest_preffix
end


p longest_common_prefix(strs)
