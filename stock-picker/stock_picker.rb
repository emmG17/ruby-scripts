def stock_picker(arrDays)
  max_idx = arrDays.length - 1
  matrix = arrDays[0..-2].each_with_index.map do |val, index|
    [val].product(arrDays[index+1..max_idx])
  end
  values = matrix.flatten(1).max { |a, b| b[0]-b[1] <=> a[0]-a[1] }
  idx = values.map { |val| arrDays.find_index(val) }
end