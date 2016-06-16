# input 8,84,17,24,19,80,74,67,61,8
# Time Complexity
#   Best Case：Ο(1)
#   Worst Case：Ο(n^2)
#   Average Case：Ο(n^2)
# Space Complexity
#   Ο(1)
# Stable/Unstable: stable
#
# rule: loop already sort data and insert to right position
#
#
require 'awesome_print'


origin = [8,84,17,24,19,80,74,67,61,8]

def insert_sort(input)
  index = 1
  other_index = 0
  temp = 0
  while index < input.length
    temp = input[index]
    other_index = index - 1
    puts "index = #{index}"
    puts "temp = #{temp}"
    puts "arr = #{input.to_s}"
    while other_index >= 0 && input[other_index] > temp
      puts "other_index = #{other_index}"
      input[other_index + 1] = input[other_index]
      other_index -= 1
    end
    input[other_index + 1] = temp
    puts "arr = #{input.to_s}"
    puts "==================="
    index += 1
  end

  input
end

result = insert_sort(origin)
ap result
