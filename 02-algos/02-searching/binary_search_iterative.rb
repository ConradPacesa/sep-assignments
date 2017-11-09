def binary_search(collection, value)
  low = 0
  high = collection.length - 1

  while low <= high do
    mid = (low + high) / 2
    if collection[mid] > value
      high = mid - 1
    elsif collection[mid] < value
      low = mid + 1
    else
      return mid
    end
  end
  return "not found"
end

test_collection = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]

puts binary_search(test_collection, "h")
puts binary_search(test_collection, "c")
puts binary_search(test_collection, "k")
puts binary_search(test_collection, "a")
