def insert_sort(collection) # Borrowed off web to use for bucket sort
    sorted_collection = [collection.delete_at(0)]

    for val in collection
        sorted_collection_index = 0
        while sorted_collection_index < sorted_collection.length 
            if val <= sorted_collection[sorted_collection_index]
                sorted_collection.insert(sorted_collection_index, val)
                break
            elsif sorted_collection_index == sorted_collection.length - 1
                sorted_collection.insert(sorted_collection_index + 1, val)
                break
            end
            sorted_collection_index += 1
        end
    end
    #puts "Insert sort final: #{sorted_collection}" - part of my debugging
    sorted_collection
end

def bucket_sort(collection)
    min = collection.min
    max = collection.max
    bucket_size = 5

    bucket_count = ((max - min) / bucket_size).floor + 1 


    buckets = Array.new(bucket_count)
    (0..buckets.length - 1).each do |i| 
        buckets[i] = []
    end

    (0..collection.length - 1).each do |i|
        buckets[((collection[i] - min) / bucket_size).floor].push(collection[i])
    end

    collection.clear
    (0..buckets.length - 1).each do |i|
        buckets[i] = insert_sort(buckets[i])
        buckets[i].each do |value|
            if !value.nil?
            collection.push(value)
            end
        end
    end
    collection
end

array_to_sort = [99,23,17,3,111,21,33,47,52,78,65,7,29,2,321,35,50,10].shuffle
puts bucket_sort(array_to_sort)
