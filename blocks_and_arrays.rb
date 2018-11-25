# Select method - Returns a new array containing all elements of the array for which the given block returns a true value. Select does not modify the original array.

array = [1,2,3,4,5,6,7,8,9,10]

result = array.select { |item| item > 5 }
p result

# Reject method - Returns a new array containing the items for which the given block is not true. Reject also does not modify the original array.

new_array = array.reject { |item| item % 3 == 0 }
p new_array

# Count method - Returns a new array containing the items for which the given block is true.

array_count = array.count { |item| item % 3 == 0 }
p array_count