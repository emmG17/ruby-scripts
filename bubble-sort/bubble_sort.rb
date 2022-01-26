def bubble_sort(array)
  max_len = array.length - 2 # Set it to the penultimate index to avoid nil values
  sorted = false
  
  until sorted do
    sorted = true
    for i in 0..max_len do
      if array[i] > array[i+1] # Compare neighboring items
        sorted = false
        array[i], array[i+1] = array[i+1], array[i] # Swap items to sort them
      end
    end
  end
  array  
end