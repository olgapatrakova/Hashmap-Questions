
def permutations?(string1, string2)
  return false if string1.length != string2.length
  return true if string1 == string2

  #Make an array from the 1st string
  array = []
  string1.length.times do |i|
    array[i] = string1[i]
  end

  # Make a hash from the array, taking care of duplicates 
  hash = {}
  array.each do |element|
    if hash[element]
      hash[element] += 1
    else
      hash[element] = 1
    end
  end

  # Subtract 1 from a value if a specific key is in the hash
  string2.length.times do |i|
    if hash[string2[i]]
      hash[string2[i]] -= 1
    else
      return false
    end
  end

  # Return true if values of the hash are all equal to 0
  return true if hash.values == Array.new(hash.size, 0)
end
