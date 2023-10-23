#Ruby
require 'pry'

def find_matches(nums_1, nums_2, nums_3)
  matches = []

  nums_1.each do |num|
    if nums_2.include?(num) && nums_3.include?(num)
        matches << num
    end
  end

  if matches.empty?
    return "There is no number that matches in every array"
  else
    return matches
  end
end

# doesn't check for negatives
# only includes 3 arrays, needs to account for more arguments