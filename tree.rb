#!/usr/bin/env ruby
=begin
*tree*
=end

class Tree
  attr_accessor :value, :left, :right
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = nil
    @right = nil
  end

end
