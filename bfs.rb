#!/usr/bin/env ruby
=begin
*bfs*
=end

require './binary_tree.rb'

# NOTE :

def wrapper(node)
  queue = [node]
  bfs(queue)
end
def bfs(queue)
  # return if queue.length == 0 # recursive
  while queue.length != 0
    node = queue[0]
    puts node.value
    if node.left != nil
      queue.append(node.left)
    end
    if node.right != nil
      queue.append(node.right)
    end
    queue.shift
  end
  # bfs(queue) # recursive
end

print "breadth First Search Print Out:\n"
wrapper(@a)
