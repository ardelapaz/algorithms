


def binary_search_iterative(collection, value)
    low = 0
    high = collection.length - 1
    counter = 0
    while low <= high
        mid = (low + high) / 2
        if collection[mid] > value 
            high = mid - 1
        elsif collection[mid] < value
            low = mid + 1
        else
            return mid 
        end
        counter += 1
        puts counter
    end
    return -1
end

test_array = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
binary_search_iterative(test_array, 6)