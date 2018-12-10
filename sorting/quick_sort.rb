def quick_sort(array, from=0, to=nil)
  if array.length <= 1
    return array
  end

  to = array.length-1 if to == nil
  return array if from >= to

  pivot = array.delete_at(array.length-1)
  left = Array.new 
  right = Array.new 

  array.each do |x| 
    if x >= pivot
      right << x
    else
      left << x 
    end
  end
    return quick_sort(left), pivot, quick_sort(right)
end

array_to_sort = [99,23,17,3,111,21,33,47,52,78,65,7,29,2,321,35,50,10].shuffle
puts quick_sort(array_to_sort)
