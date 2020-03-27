# Design and implement a method that takes two integer arrays with unique values and 
# returns their intersection in a new array.
# Time complexity: O(n + m)
# Space complexity: O(n)

def intersection(list1, list2)
  return nil if list1 == nil || list2 == nil

  # Each integer is a key in a hash with value 'true'
  hash = {}
  list1.each do |element|
    hash[element] = true
  end

  # Check if an integer from the second list is already in a hash
  result = []
  list2.each do |number|
    if hash[number]
      result << number
    end
  end

  return result
end
