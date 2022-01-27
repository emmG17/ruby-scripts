def stock_picker(arr_days)
  values = get_triangle_matrix(arr_days).max { |a, b| b[0] - b[1] <=> a[0] - a[1] }
  values.map { |val| arr_days.find_index(val) }
end

def get_triangle_matrix(array)
  max_idx = array.length - 1
  matrix = array[0..-2].each_with_index.map do |val, index|
    [val].product(array[index + 1..max_idx])
  end
  matrix.flatten(1)
end
