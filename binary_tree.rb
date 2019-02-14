#!/usr/bin/env ruby
=begin
*binary_tree*
=end

require './binary_nodes.rb'

# a = Node.new('a')
# a.insert_left('b')
# a.insert_right('c')
# b = a.left
# b.insert_right('d')
# c = a.right
# c.insert_left('e')
# c.insert_right('f')

a = Node.new('a')
a.insert_left('b')
a.insert_right('c')
a.left.insert_right('d')
a.right.insert_left('e')
a.right.insert_right('f')

@a = a

print "BINARY TREE CREATED\n"
print "A : #{a.value}\n"
print "A children : #{a.left.value} : #{a.right.value}\n"


print <<VISUAL
visual:

      a
    /   \\ 
   b     c
    \\   / \\
     d e   f
VISUAL
