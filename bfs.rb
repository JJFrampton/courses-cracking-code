#!/usr/bin/env ruby
=begin
*bfs*
=end

require './binary_tree.rb'

def bfs(node)
  puts node.value
  if node.left != nil
    dfs(node.left)
  end
  if node.right != nil
    dfs(node.right)
  end
end

print "breadth First Search Print Out:\n"
bfs(@a)
