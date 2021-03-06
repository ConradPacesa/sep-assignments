require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if root.rating <= node.rating
      root.right == nil ? root.right = node : insert(root.right, node)
    else
      root.left == nil ? root.left = node : insert(root.left, node)
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    stack = []

    stack.push(root)
    while !stack.empty? do
      current = stack.pop
      if current.title == data
        return current
        break
      else
        if current.left != nil
          stack.push(current.left)
        end
        if current.right != nil
          stack.push(current.right)
        end
      end
    end
  end

  def delete(root, data)
    if data == nil
      return
    else
      parent = find_parent(root, data)

      if (parent.left.is_a?(Node) && parent.left.title == data)
        parent.left = nil
      elsif (parent.right.is_a?(Node) &&parent.right.title == data)
        parent.right = nil
      end
    end
  end

  # Recursive Breadth First Search
  def printf(children=nil)
    queue = []

    queue.push(@root)
    while !queue.empty? do
      current = queue.shift
      puts "#{current.title}: #{current.rating}\n"
      if current.left != nil
        queue.push(current.left)
      end
      if current.right != nil
        queue.push(current.right)
      end
    end
  end

  private
  def find_parent(root, data)
    stack = []

    stack.push(root)
    while !stack.empty? do
      current = stack.pop
      #puts current.right.title
      if (current.left.is_a?(Node) && current.left.title == data) || (current.right.is_a?(Node) && current.right.title == data)
        return current
        break
      else
        if current.left != nil
          stack.push(current.left)
        end
        if current.right != nil
          stack.push(current.right)
        end
      end
    end
  end
end
