require 'pry'

def find_first_duplicate(arr)
#   # type your code in here
  duplicates = []
  preceding = []
  current_index = 1
  arr.each do |element|
    preceding << arr[current_index - 1]
    if preceding.include?(arr[current_index])
      duplicates << arr[current_index]
    end
    current_index += 1
    # binding.pry
  end
  if duplicates.first
    duplicates.first
  else
    -1
  end
end

# find_first_duplicate([2, 1, 3, 3, 2])

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  # Don't forget to add your own!
  puts "given: [0, 1, 2, 3, 1, 3, 0]"
  puts "Expect: 1"
  puts "=>", find_first_duplicate([0, 1, 2, 3, 1, 3, 0])

  puts "given: [0, 1, 2, 3, 4]"
  puts "Expect: -1"
  puts "=>", find_first_duplicate([0, 1, 2, 3, 1, 3, 0]) 
end

# Please add your pseudocode to this file,
#   Iterate through array in order
#   if, when you reach an element, it already exists in the array, return that element and stop iterating
#   else, if there are no repeats, return -1

# And a written explanation of your solution
  # Each element in the array needs to be compared to its preceding elements
  # I could not use slice with arr.index() for this because index does not account for duplicates and returns the index of the first match
  # so I created a variable to keep track of the current index and started at 1, since there can be no duplicates if an array only has one element
  # every duplicate was pushed into a new array, and the first element of that array is the result we want: the first duplicate
  # I originally set the duplicate equal to a variable, but because the iteration does not stop at the first result, the first duplicate could be overwritten by subsequent duplicates