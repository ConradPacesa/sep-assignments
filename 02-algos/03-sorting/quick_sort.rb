def quick_sort(collection)
  if collection.length <= 1
    return collection
  else
    pivot = collection.first
    collection.delete_at(collection.index(pivot))

    less = []
    greater = []


    collection.each do |c|
      if c < pivot
        less << c
      else
        greater << c
      end
    end

    sorted_array = []

    sorted_array << quick_sort(less)
    sorted_array << pivot
    sorted_array << quick_sort(greater)
    sorted_array.flatten!
  end
end

collection = ["e", "c", "a", "b", "f", "g", "d"]
puts "Unsorted collection"
p collection

sorted_collection = quick_sort(collection)
puts "Sorted collection"
p sorted_collection
