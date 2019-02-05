=begin
*insertion_sort*
=end

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
