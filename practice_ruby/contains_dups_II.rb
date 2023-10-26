# Given an integer array nums and an integer k, 
# return true if there are two distinct indices i and j 
# in the array such that nums[i] == nums[j] and abs(i - j) <= k.

# Example 1:

# Input: nums = [1,2,3,1], k = 3
# Output: true
# Example 2:

# Input: nums = [1,0,1,1], k = 1
# Output: true
# Example 3:

# Input: nums = [1,2,3,1,2,3], k = 2
# Output: false
require 'pry'

def contains_nearby_duplicate(nums, k)
  num_indices = {}

  nums.each_with_index do |num, idx|
    if num_indices.key?(num) && (idx - num_indices[num]) <= k
      return true
    end
    num_indices[num] = idx
  end

  false
end


p contains_nearby_duplicate([1,0,1,1], k = 1)
