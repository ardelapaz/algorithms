require 'benchmark'

def bubble_sort(collection)
    n = collection.length
    # #1
    begin
      swapped = false
 
      # #2
      (n - 1).times do |i|
        # #3
        if collection[i] > collection[i + 1]
          tmp = collection[i]
          collection[i] = collection[i + 1]
          collection[i + 1] = tmp
          swapped = true
        end
      end
    end until not swapped
 
    collection
  end

  array_to_sort = Array.new(50) { rand(1...200) }
  puts bubble_sort(array_to_sort)
  puts Benchmark.measure{bubble_sort(array_to_sort)}
  # 0.000000   0.000000   0.000000 (  0.000008)