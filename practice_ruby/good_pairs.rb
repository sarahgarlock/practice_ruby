# Given an array of integers nums, 
# return the number of good pairs.

# A pair (i, j) is called good if nums[i] == nums[j] and i < j.

# Example 1:

# Input: nums = [1,2,3,1,1,3]
# Output: 4
# Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
# Example 2:

# Input: nums = [1,1,1,1]
# Output: 6
# Explanation: Each pair in the array are good.
# Example 3:

# Input: nums = [1,2,3]
# Output: 0

require 'pry'

def num_identical_pairs(nums)

  return 0 if nums == nums.uniq
  count = []
  nums.each_with_index do |num, idx|
    if nums.count(num) > 1 &&
      idx
      binding.pry
    end

  end
    
end

p num_identical_pairs([1,2,3,1,1,3])