def sort_pair(pair)
  a = pair[0]
  b = pair[1]
  is_b_greater = (a <=> b) > 0
  return is_b_greater ? pair.reverse : pair
end

def bubble_sort(array)
  result = array
  until is_sorted?(result)
    result[0..-2].each_with_index do |val, index|
      sorted = sort_pair(result[index..index+1])
      result[index] = sorted[0]
      result[index+1] = sorted[1]
    end
  end
  result
end

def is_sorted? (array)
  max_len = array.length - 2
  for i in 0..max_len do
    if array[i] > array[i+1]
      return false
    end
  end
  return true
end