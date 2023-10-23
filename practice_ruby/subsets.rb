# In this challenge you are given an array of unique integers. Your job is to return all the possible combinations of unique pairs (2 integers only). No duplicate pairs are allowed. Below are some examples:

#     #Example 1
#     Input: [1, 2, 3, 4]
#     Output: [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
    
#     #Example 2
#     Input: [54, 77]
#     Output[[54, 77]]
    
#     #Example 3
#     Input: []
#     Output: []

# Return combo of unique pairs with only 2 integers (doesn't matter order)
# .permutation(2) - to make combos
# .sort
# .uniq

require 'pry'

def combo(nums)
  permutations = nums.permutation(2).to_a
  sorted_perms = []
  
  permutations.map do |perm|
    sorted_perms << perm.sort
    
  end
  sorted_perms.uniq
end

p combo([])