def intersection(list1, list2)
  return nil if list1 == nil || list2 == nil

  hash = {}
  list1.each do |element|
    hash[element] = true
  end

  result = []
  list2.each do |number|
    if hash[number]
      result << number
    end
  end

  return result
end
