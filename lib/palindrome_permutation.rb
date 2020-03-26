
def palindrome_permutation?(string)
  return false if string.match(/[^a-zA-Z]/)
  return true if string.length == 0
  hash = {}
  string.length.times do |i|
    if hash[string[i]]
      hash[string[i]] += 1
    else
      hash[string[i]] = 1
    end
  end

  odd = 0
  hash.values.each do |integer|
    if integer.odd?
      odd += 1
    end
  end
  
  return odd > 1 ? false : true
end

p palindrome_permutation?("racecar")