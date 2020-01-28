def bubble_sort(arr)
  array_length = arr.length
  while array_length > 1
    newn = 0
    1.upto(array_length - 1) do |i|
      next unless arr[i - 1] > arr[i]

      temp = arr[i - 1]
      arr[i - 1] = arr[i]
      arr[i] = temp
      newn = i
    end
    array_length = newn
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(arr)
  array_length = arr.length

  while array_length > 1
    newn = 0
    1.upto(array_length - 1) do |i|
      next unless (yield arr[i - 1], arr[i]).positive?

      temp = arr[i - 1]
      arr[i - 1] = arr[i]
      arr[i] = temp
      newn = i
    end
    array_length = newn
  end
  arr
end

p bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
