def new_bubble_sort(array)
  max_len = array.length - 2
  sorted = false
  
  until sorted do
    sorted = true
    for i in 0..max_len do
      if array[i] > array[i+1]
        sorted = false
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  array  
end