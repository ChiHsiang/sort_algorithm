# input 98,96,54,34,62,46,28,12,37,10
# Time Complexity
#   Best Case：Ο(n^2)
#   Worst Case：Ο(n^2)
#   Average Case：Ο(n^2)
# Space Complexity
#   Ο(1)
# Stable/Unstable: Unstable
#
# rule: find max value or min value insert to output last element
#
require 'awesome_print'

origin = [98,96,54,34,62,46,28,12,37,10]

def selection(input)
  index = 0

  while index < input.length
    min_index = index
    other_index = index + 1

    while other_index < input.length
      min_index = other_index if input[other_index] < input[min_index]
      other_index += 1
    end

    swap(input, index, min_index) if index != min_index
    index += 1
  end

  input
end

def swap(ele, main_index, min_index)
  tmp = ele[main_index]
  ele[main_index] = ele[min_index]
  ele[min_index] = tmp
end

result = selection(origin)
ap result.to_s
