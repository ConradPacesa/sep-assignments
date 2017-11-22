require 'benchmark'

require_relative './bucket_sort.rb'
require_relative './heap_sort.rb'
require_relative './quick_sort.rb'

collection1 = [29, 46, 94, 50, 22, 99, 35, 81, 11, 88, 76, 72, 35, 55, 43, 14, 4, 75, 14, 71, 92, 40, 84, 51, 92, 89, 38, 15, 19, 73, 51, 8, 87, 98, 31, 92, 31, 37, 82, 75, 18, 75, 42, 51, 57, 60, 87, 33, 51, 44]
collection2 = [29, 46, 94, 50, 22, 99, 35, 81, 11, 88, 76, 72, 35, 55, 43, 14, 4, 75, 14, 71, 92, 40, 84, 51, 92, 89, 38, 15, 19, 73, 51, 8, 87, 98, 31, 92, 31, 37, 82, 75, 18, 75, 42, 51, 57, 60, 87, 33, 51, 44]
collection3 = [29, 46, 94, 50, 22, 99, 35, 81, 11, 88, 76, 72, 35, 55, 43, 14, 4, 75, 14, 71, 92, 40, 84, 51, 92, 89, 38, 15, 19, 73, 51, 8, 87, 98, 31, 92, 31, 37, 82, 75, 18, 75, 42, 51, 57, 60, 87, 33, 51, 44]

puts '***Sort collection of 50 random ints between 1 and 100***'

Benchmark.bm do |x|
  x.report("Bucket sort") {bucket_sort(collection1)}
  x.report("heap sort  ") {HeapSort.new(collection2).heap_sort}
  x.report("Quick sort ") {quick_sort(collection3)}
end
