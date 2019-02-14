=begin
*merge_sort*
=end

def merge(left, right, array)
  nLeft = left.length
  nRight = right.length
  i,j,k = 0,0,0
  while (i < nLeft && j < nRight)
    if (left[i] <= right[j])
      array[k] = left[i]
      k += 1
      i += 1
    else
      array[k] = right[j]
      j += 1
    end
    k += 1
  end
  while (i < nLeft)
    array[k] = left[i]
    i += 1
    k += 1
  end
  while (j < nRight)
    array[k] = right[j]
    j += 1
    k += 1
  end
end
 
def mergeSort(array)
  n = array.length
  if n < 2 then return end
  mid = n/2
  left = array[0,mid]
  right = array[mid..-1]
  print "\nmid #{mid}"
  print "\nleft #{left}"
  print "\nright #{right}"
  for i in 0..mid-1
    left[i] = array[i]
  end
  for i in mid..n-1
    right[i-mid] = array[i]
  end
  mergeSort(left)
  mergeSort(right)
  merge(left,right,array)
end

array = [2,4,1,6,8,5,3,7]
print = "\n#{array}"
mergeSort(array)
print = "\n#{array}"
