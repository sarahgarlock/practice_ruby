# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

# Plan
# Iterate over each element to see if it adds up to target, return indices

require 'pry'

def two_sum(nums, target)
  idx_hash = {}

  nums.each_with_index do |num, idx|
    complement = target - num

    if idx_hash.key?(complement)
      return [idx_hash[complement], idx]
    end
    idx_hash[num] = idx
  end
  return "There are no available two sums for that target"
end

p two_sum([2,7,11,15], target = 26)