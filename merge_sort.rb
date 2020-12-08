def merge_sort(array)
  return array if array.length < 2

  midpoint = array.length / 2

  left_half = merge_sort(array[0...midpoint])
  right_half = merge_sort(array[midpoint..-1])

  sorted_array = []

  while left_half.length > 0 && right_half.length > 0
    if left_half[0] < right_half[0]
      sorted_array << left_half.shift
    else
      sorted_array << right_half.shift
    end
  end

  if left_half.empty?
    right_half.each { |n| sorted_array << n }
  else
    left_half.each { |n| sorted_array << n }
  end

  return sorted_array
end

array = [3, 6, 1, 42, 23, 12, 5, 2]

p merge_sort(array)
