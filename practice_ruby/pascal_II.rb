# Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

  #           1
  #         1   1
  #       1   2   1
  #     1   3   3   1
  #   1   4   6   4   1
  # 1   5   10  10  5   1

  # If row_index < 0 return []
  # Elsif row_index == 0 return [1]
  # Else
  # start_row = [1, 1]
  # row_stop []

  # Loop times (row_index - 1) until following index is nil? then break
  # In start_row array, add first and following index numbers and shovel into row_stop array, 
  # add second number and third number and shovel into row_stop, etc.


  # Example 1:

  # Input: rowIndex = 3
  # Output: [1,3,3,1]
  # Example 2:
  
  # Input: rowIndex = 0
  # Output: [1]
  # Example 3:
  
  # Input: rowIndex = 1
  # Output: [1,1]

require 'pry'

def get_row(row_index)
  # return [] if row_index < 0
  # return [1] if row_index == 0
  # start_row = [1, 1]
  # row_stop = [1]

  # (row_index - 1).times do
  #   start_row.each_with_index do |num, idx|
  #     if start_row[idx + 1] == nil
  #       break
  #     else
  #       row_stop << (start_row[idx] + start_row[idx +1])
  #     end
  #   end
  #   row_stop << 1
  #   binding.pry
  # end
  # row_stop

  return [] if row_index < 0
  return [1] if row_index == 0
  start_row = [1, 1]
  row_stop = []
  
  (row_index - 1).times do
    start_row.each_with_index do |num, idx|
      if start_row[idx + 1] == nil
        break
      else
        row_stop << start_row[idx] + start_row[idx + 1]
      end
    end
    start_row = [1] + row_stop + [1]
    row_stop = []
  end
  start_row
end

p get_row(7)































