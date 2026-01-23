def bubble_sort(array)
  n = array.length - 1
  count = 0

  n.times do 
    count += 1

    array.each_index do |index|
      break if index + count == array.length
      next if index == array.length - 1

      next_num = array[(index+1)]
      current_num = array[index]

      if current_num > next_num
        array[index], array[(index+1)] = array[(index+1)], array[index]
      end
    end
  end

  puts array
  array
end

a_very_bubbly_array = [42, 7, 89, 16, 63, 28, 91, 54, 3, 77, 35, 68, 12, 84, 26, 59, 98, 41, 9, 70]

bubble_sort(a_very_bubbly_array)