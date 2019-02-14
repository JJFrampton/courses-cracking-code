#!/usr/bin/env ruby
=begin
*binary_search_tree*
=end

class BST
  attr_accessor :value, :left, :right
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = nil
    @right = nil
  end
  def insert(val)
    if val <= @value
      if @left
        @left.insert(val)
      else
        @left = BST.new(val)
      end
    elsif val > @value
      if @right
        @right.insert(val)
      else
        @right = BST.new(val)
      end
    end
  end
end


# a = BST.new(5)
# a.insert(2)
# a.insert(6)
# a.insert(3)
# a.insert(1)

# print "a.value : #{a.value}\n"
# print "a.left.value : #{a.left.value}\n"
# print "a.right.value : #{a.right.value}\n"
# print "a.left.left.value : #{a.left.left.value}\n"
# print "a.left.right.value : #{a.left.right.value}\n"
