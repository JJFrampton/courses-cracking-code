#!/usr/bin/env ruby
=begin
*dfs*
=end

class Node
  attr_accessor :value, :children
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = nil
    @right = nil
  end
end

a = Node.new(1, c, b)

print a.value
