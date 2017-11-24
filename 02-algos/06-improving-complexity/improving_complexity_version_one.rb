def code_optimized_ruby(*arrays)
  combined_array = arrays.flatten!

  sorted_array = [combined_array.delete_at(0)]

  for val in combined_array
    i = 0
    while i < sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
end

a1 = [2, 3, 1]
a2 = [13, 11, 15]
a3 = [22, 23, 21]

p code_optimized_ruby(a1, a2, a3)
