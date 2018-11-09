


def binary_search_recursive(collection, value, counter)
    low = 0
    high = collection.length - 1
    mid = (low + high) / 2

        if collection[mid] > value 
            return binary_search_recursive(collection.slice(low..mid), value, counter + 1)
        elsif collection[mid] < value
            return binary_search_recursive(collection.slice((mid + 1)..high), value, counter + 1)
        else
            puts counter
            puts mid
            return mid 
        end 
    return -1
end

test_array = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
binary_search_recursive(test_array, 9, 1)