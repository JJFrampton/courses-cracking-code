=begin
*insertion_sort*
=end

#def shift(a, i, temp)
#  j = i-1
#  while j >= 0 do
#    print "\n#{a[j]} greater that #{temp}"
#    if a[j] > temp 
#      a[j+1] = a[j]
#      print "\n#{a}"
#    end
#    j -= 1
#  end
#  print "\n#{a}"
#  return j+1
#end
#
#def insertion_sort(a)
#    n = a.length - 1
#    i = 1
#    while i <= n
#      temp = a[i]
#      ins = shift(a, i, temp)
#      a[ins+1] = temp
#      i += 1
#    end
#end

def insertion_sort(a)
  i = 1
  while i < a.length
    value = a[i]
    gap = i
    while gap > 0 && a[gap - 1] > value
      a[gap] = a[gap - 1]
      gap = gap - 1
    end
    a[gap] = value
    i += 1
  end
end

a = [1,8,4,3,5]
print a
insertion_sort(a)
print a

# O(n) best case
# O(n^2) worst case
