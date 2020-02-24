# bubble sort without yield
def bubble_sort(array)
  (1..array.length - 1).each do |j|
    loop_until = array.length - j
    (0..loop_until).each do |i|
      next unless i != array.length - 1

      if array[i] > array[i + 1] # check if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i] # swap
      end
    end
  end
  array
end

# bubble sort with yield
def bubble_sort_by(arr)
  (1..arr.length - 1).each do |x|
    (0..arr.length - x).each do |y|
      next unless y != arr.length - 1

      sort_param = yield(arr[y], arr[y + 1])

      arr[y], arr[y + 1] = arr[y + 1], arr[y] if sort_param.positive?
    end
  end
  arr
end

print bubble_sort([5, 4, 3, 2, 1])
puts
print bubble_sort(%w[tirtha kyle heh haha ruby microverse])
puts

print bubble_sort_by(%w[tirtha kyle heh haha ruby microverse]) { |first, second|
  first.length - second.length
}
puts
print bubble_sort_by([4, 3, 78, 2, 0, 2]) { |first, second| first <=> second }
