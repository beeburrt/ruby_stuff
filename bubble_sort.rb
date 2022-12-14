# bubble_sort.rb
#
# Build a method #bubble_sort that takes an array and
#  returns a sorted array. It must use the bubble sort
#   methodology (in other words, no using #sort)

def bubble_sort(arr)
  len = arr.length
  return arr if len <= 1 # sorted already

  sorted = true

  while sorted
    sorted = false
    (len - 1).times do |i|
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        sorted = true
      end
    end
  end

  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2]) # => [0, 2, 2, 3, 4, 78]
