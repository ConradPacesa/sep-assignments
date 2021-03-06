require 'benchmark'

require_relative './binary_tree/binary_search_tree.rb'
require_relative './binary_heap/binary_heap.rb'

@root = Node.new(0, 0)
bst = BinarySearchTree.new(@root)
bh = BinaryHeap.new(@root)

def create_tree(n, tree)
  for i in 1..n do
    a = Node.new(i, i)
    tree.insert(@root, a)
  end
end

puts '***Create binary tree and binary heap of 10,000 length***'

Benchmark.bm do |x|
  x.report("Binary Search Tree") {create_tree(10_000, bst)}
  x.report("Binary Heap       ") {create_tree(10_000, bh)}
end

create_tree(10_000, bst)
create_tree(10_000, bh)

puts '***Finds 5,000th element***'

Benchmark.bm do |x|
  x.report("Binary Search Tree") {bst.find(@root, 5_000)}
  x.report("Binary Heap       ") {bh.find(@root, 5_000)}
end
