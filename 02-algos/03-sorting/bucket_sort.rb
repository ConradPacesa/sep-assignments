def insertion_sort(collection)
  sorted_collection = [collection.delete_at(0)]

  for val in collection
    sorted_collection_index = 0
    while sorted_collection_index < sorted_collection.length
      if val <= sorted_collection[sorted_collection_index]
        sorted_collection.insert(sorted_collection_index, val)
        break
      elsif sorted_collection_index == sorted_collection.length - 1
        sorted_collection.insert(sorted_collection_index + 1, val)
        break
      end
      sorted_collection_index += 1
    end
  end
  sorted_collection
end

def bucket_sort(collection)
  if collection == nil
    return
  end

  if collection.length == 1
    return collection
  end

  buckets = Array.new(collection.length)

  collection.each do |c|
    bucket = (c / buckets.length).floor
    if buckets[bucket] == nil
      buckets[bucket] = Array.new
      buckets[bucket].push(c)
    else
      buckets[bucket].push(c)
    end
  end

  buckets.each_index do |i|
    if buckets[i] != nil
      buckets[i] = insertion_sort(buckets[i])
    end
  end
  return buckets.flatten.compact
end

collection = [5, 51, 19, 27, 64, 73, 42, 89, 51, 76, 34, 28]

p collection
sorted_collection = bucket_sort(collection)
p sorted_collection
