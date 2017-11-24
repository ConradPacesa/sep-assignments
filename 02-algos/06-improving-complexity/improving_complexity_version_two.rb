class HeapSort
  attr_accessor :collection

  def initialize(collection)
    @collection = collection
  end

  def heap_sort
    heapify
    ends = collection.length - 1
    while ends > 0
      collection[ends], collection[0] = collection[0], collection[ends]
      ends -= 1
      shift_down(0, ends)
    end
    return collection
  end

  def heapify
    starts = (collection.length - 2)/2

    while starts >= 0
      shift_down(starts, collection.length - 1)
      starts -= 1
    end
  end

  def shift_down(starts, ends)
    root = starts
    while (root * 2 + 1) <= ends
      child = root * 2 + 1
      swap = root

      if collection[swap] < collection[child]
        swap = child
      end

      if child + 1 <= ends && collection[swap] < collection[child + 1]
        swap = child + 1
      end

      if swap != root
        collection[root], collection[swap] = collection[swap], collection[root]
        root = swap
      else
        return
      end
    end
  end
end

def time_optimized_ruby(*arrays)
  combined_array = arrays.flatten!

  return HeapSort.new(combined_array).heap_sort
end

a1 = [2, 3, 1]
a2 = [13, 11, 15]
a3 = [22, 23, 21]

p time_optimized_ruby(a1, a2, a3)
