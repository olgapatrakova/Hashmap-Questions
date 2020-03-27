
def permutations?(string1, string2)
  return false if string1.length != string2.length
  return true if string1 == string2

  # Make a hash from a string, taking care of duplicates 
  hash = {}
  string1.length.times do |i|
    if hash[string1[i]]
      hash[string1[i]] += 1
    else
      hash[string1[i]] = 1
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
  
  # Return true if all values of the hash are equal to 0
  return true if hash.values.all?(0)
end