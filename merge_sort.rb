#!/usr/bin/env ruby
=begin
*merge_sort*
=end

def split(arr)
  print arr
  # recursively split the array into smaller arrays
  n = arr.length
  return arr unless n > 1
  print "didnt return  \n"
  mid = n / 2
  left = arr[0..mid-1]
  right = arr[mid..-1]
  # split(left)
  # split(right)
  # merge the arrays on the way out of recursion
  # return merge(left, right)
  return merge(split(left), split(right))
end

def merge(left, right)
  print " left and right : #{left} #{right}"
  result = []
  left_i = 0
  right_i = 0
  # iterate through both arrays, appending the lower values first
  while left_i < left.length && right_i < right.length
    if left[left_i] < right[right_i]
      result.append(left[left_i])
      left_i += 1
    else
      result.append(right[right_i])
      right_i += 1
    end
    print "result : #{result}\n"
  end
  # concat the end of the longer array
  result.concat(right[right_i..-1]) if left_i >= left.length
  result.concat(left[left_i..-1]) if right_i >= right.length
  print "result : #{result}\n"
  return result
end


a = [5,8,3,6,4]
puts split(a)
