def heapify(collection, size, root) 
  largest = root
  left = 2*root + 1
  right = 2*root + 2

  if (left < size && collection[left] > collection[largest])
    largest = left
  end
  if (right < size && collection[right] > collection[largest])
    largest = right 
  end
  if (largest != root)
    collection[root], collection[largest] = collection[largest], collection[root]
    heapify(collection, size, largest)
  end
  collection
end

def heap_sort(collection, size)

  i = (size / 2) - 1
  while i >= 0
    collection = heapify(collection, size, i)
    i -= 1
  end

  j = size - 1
  while j >= 0
    collection[0], collection[j] = collection[j], collection[0]
    collection = heapify(collection, j, 0)
    j -= 1
  end
  collection
end


array_to_sort = [99,23,17,3,111,21,33,47,52,78,65,7,29,2,321,35,50,10]
size = array_to_sort.length
puts heap_sort(array_to_sort, size)