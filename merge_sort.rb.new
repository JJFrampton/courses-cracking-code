#!/usr/bin/env ruby
=begin
*merge_sort*
=end

def merge(l, r, a)
  nl = l.length
  nr = r.length
  i,j,k = 0,0,0
  while i < nl && j < nr
    print i 
    print j
    print l[i]
    print r[i]
    if l[i] <= r[i]
      a[k] = l[i]
      i += 1
    else
      a[k] = r[j]
      j += 1
    end
    k += 1
  end
  # only one of these while loops will run to cover left overs
  while i < nl
    a[k] = l[i]
    i = i+= 1
    k += 1
  end
  while
    a[k] = r[i]
    i = i+= 1
    k += 1
  end
end

def merge_sort(a)
  n = a.length
  return if n < 2 # break out of rcursion
  print "\nthis is n : #{n}\n"
  mid = n / 2
  # creating left and right sub lists
  left = a[0,mid]
  right = a[mid..-1]
  print left
  print right
  # recurse into left then right
  print "\n left"
  merge_sort(left)
  print "\n right"
  merge_sort(right)
  merge(left, right, a)
end

a = [1,4,2,3,5,6,0,9]
merge_sort(a)
