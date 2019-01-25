require 'benchmark'


def insertion_sort(collection)
    # #1
    sorted_collection = [collection.delete_at(0)]
 
    for val in collection
      sorted_collection_index = 0
      # #2
      while sorted_collection_index < sorted_collection.length
        if val <= sorted_collection[sorted_collection_index]
          # #3
          sorted_collection.insert(sorted_collection_index, val)
          break
        elsif sorted_collection_index == sorted_collection.length - 1
          # #4
          sorted_collection.insert(sorted_collection_index + 1, val)
          break
        end
 
        sorted_collection_index += 1
      end
    end
 
    sorted_collection
  end

array_to_sort = Array.new(50) { rand(1...200) }
puts insertion_sort(array_to_sort)
puts Benchmark.measure{insertion_sort(array_to_sort)}
# 0.000000   0.000000   0.000000 (  0.000049)