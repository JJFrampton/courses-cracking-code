#!/usr/bin/env ruby
=begin
*binary_nodes*
=end

class Node
  attr_accessor :value, :left, :right
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = nil
    @right = nil
  end
  def insert_left(val)
    if @left == nil
      @left = Node.new(val)
    else
      new = Node.new(val)
      new.left = @left
      @left = new
    end
  end
  def insert_right(val)
    if @right == nil
      @right = Node.new(val)
    else
      new = Node.new(val)
      new.right = @right
      @right = new
    end
  end
end
