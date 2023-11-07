# Given a 0-indexed integer array nums, find a 0-indexed integer array answer where:

# answer.length == nums.length.
# answer[i] = |leftSum[i] - rightSum[i]|.
# Where:

# leftSum[i] is the sum of elements to the left of the index i in the array nums. If there is no such element, leftSum[i] = 0.
# rightSum[i] is the sum of elements to the right of the index i in the array nums. If there is no such element, rightSum[i] = 0.
# Return the array answer.

# Example 1:

# Input: nums = [10,4,8,3]
# Output: [15,1,11,22]
# Explanation: The array leftSum is [0,10,14,22] and the array rightSum is [15,11,3,0].
# The array answer is [|0 - 15|,|10 - 11|,|14 - 3|,|22 - 0|] = [15,1,11,22].
# Example 2:

# Input: nums = [1]
# Output: [0]
# Explanation: The array leftSum is [0] and the array rightSum is [0].
# The array answer is [|0 - 0|] = [0].

# PLAN
# Left array - 
# Will always start with 0, [1] will always be [0] value
# Each with index while index < index of num << left array

# Right array - 
# Will always end in 0, [-2] will always be [-1] value
# Each with index while index > index of num << right array

require 'pry'

def left_right_difference(nums)
  n = nums.size
  
  right = []
  right_count = []
  
  # Right
  nums.each do |num|
    r = ((nums.sum) - num - (right_count.sum))
    right << r
    right_count << num
  end
  
  left = [0]
  left << nums[0]
  left_count = [nums[0]]
  
  # Left
  nums.each_with_index do |num, idx|
    next if idx == 0
    break if idx == nums[-1]
    left_count << num
    l = left_count.sum
    left << l
  end

  # Absolute Value
  arr = []
  total = 0
  (n).times do
    arr << (right[total] - left[total]).abs
    total += 1
  end

  arr
end
p left_right_difference([10,4,8,3])
# [15,1,11,22]
# leftSum is [0,10,14,22] and the array rightSum is [15,11,3,0]