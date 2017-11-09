def binary_search(collection, value, lower, upper)
  if lower <= upper
    mid = (lower + upper) / 2
    if collection[mid] == value
      return mid
    elsif collection[mid] > value
      binary_search(collection, value, lower, mid - 1)
    elsif collection[mid] < value
      binary_search(collection, value, lower + 1, upper)
    end
  else
    return "not found"
  end
end

test_collection = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]

puts binary_search(test_collection, "h", 0, test_collection.length - 1)
puts binary_search(test_collection, "c", 0, test_collection.length - 1)
puts binary_search(test_collection, "k", 0, test_collection.length - 1)
puts binary_search(test_collection, "a", 0, test_collection.length - 1)
