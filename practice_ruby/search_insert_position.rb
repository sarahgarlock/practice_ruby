# Given a sorted array of distinct integers and a target value, 
# return the index if the target is found. If not, 
# return the index where it would be if it were inserted in order.

# You must write an algorithm with O(log n) runtime complexity.

# Example 1:

# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:

# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:

# Input: nums = [1,3,5,6], target = 7
# Output: 4

# Return index if target is found (each_with_index)?

# Could we shovel target into array, sort then find index?

require 'pry'

def search_insert(nums, target)
  return nums.index(target) if nums.include?(target)

  arr = nums << target
  sorted = arr.sort
  sorted.index(target)
end

p search_insert([1,3,5,6,7], 0)