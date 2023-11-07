# Given an array nums. We define a running sum of an array as 
# runningSum[i] = sum(nums[0]…nums[i]).

# Return the running sum of nums.

# Example 1:

# Input: nums = [1,2,3,4]
# Output: [1,3,6,10]
# Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
# Example 2:

# Input: nums = [1,1,1,1,1]
# Output: [1,2,3,4,5]
# Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
# Example 3:

# Input: nums = [3,1,2,10,1]
# runningSum[0] is the sum of nums[0], which is 3. So, runningSum[0] = 3.
# runningSum[1] is the sum of nums[0] and nums[1], which is 3 + 1 = 4. So, runningSum[1] = 4.
# runningSum[2] is the sum of nums[0], nums[1], and nums[2], which is 3 + 1 + 2 = 6. So, runningSum[2] = 6.
# runningSum[3] is the sum of nums[0], nums[1], nums[2], and nums[3], which is 3 + 1 + 2 + 10 = 16. So, runningSum[3] = 16.
# runningSum[4] is the sum of all elements in nums, which is 3 + 1 + 2 + 10 + 1 = 17. So, runningSum[4] = 17.


# PLAN
# return nums[0] in array,
# sum of nums[0] & nums[1], return to array
# sum of nums[0] & nums[1]  & nums[2], return to array
# etc

# nums[0], nums[0] + nums[1], nums[0] + nums[1] + nums[2]

require 'pry'

def running_sum(nums)
  start = [nums[0]]

  nums.each_with_index do |num, idx|
    next if idx == 0
    start << start[idx - 1] + num
  end
  start
end


p running_sum([1, 2, 3, 4])
# [1,3,6,10]
