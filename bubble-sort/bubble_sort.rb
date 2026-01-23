def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

a_very_bubbly_array = [42, 7, 89, 16, 63, 28, 91, 54, 3, 77, 35, 68, 12, 84, 26, 59, 98, 41, 9, 70]

bubble_sort(a_very_bubbly_array)