# input = 52,95,79,61,64,5,81,3,6,11
# Time Complexity
#   Best Case：Ο(n)
#   Worst Case：Ο(n^2)
#   Average Case：Ο(n^2)
# Space Complexity
#   Ο(1)
# Stable/Unstable: stable
#
# rule: all element compare every one then swap match condition value
#
#
require 'awesome_print'

origin = [52,95,79,61,64,5,81,3,6,11]

def bubble_sort(input)
  index = 0
  while index < input.length
    other_index = 0
    while other_index < (input.length - 1 - index)
      swap(input, other_index, other_index + 1) if input[other_index + 1] < input[other_index]
      other_index += 1
    end
    index += 1
  end

  input
end

def swap(ele, main_index, other_index)
  tmp = ele[main_index]
  ele[main_index] = ele[other_index]
  ele[other_index] = tmp
end

result = bubble_sort(origin)
ap result.to_s
