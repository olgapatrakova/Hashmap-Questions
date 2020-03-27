# Write a method which takes a string as an argument and 
# returns true if the letters could be re-arranged into a palindrome.
# Time complexity: O(n)
# Space complexity: O(n)

def palindrome_permutation?(string)
  return false if string.match(/[^a-zA-Z]/)
  return true if string.length == 0

  # Make each letter a key and the letter count as a value in a hash
  hash = {}
  string.length.times do |i|
    if hash[string[i]]
      hash[string[i]] += 1
    else
      hash[string[i]] = 1
    end
  end

  # A string is a palindrome if there are even occurances of each letter
  # A string is a palindrome if there is 1 letter of odd number of occurances
  # e.g. raceacar 'e' appears only once, other letters appear twice
  odd = hash.values.sum do |integer|
    integer.odd? ? 1 : 0
  end
  
  return odd > 1 ? false : true
end

p palindrome_permutation?("racecar")