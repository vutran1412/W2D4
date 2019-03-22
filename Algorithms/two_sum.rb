require "byebug"

# O(n ^ 2)
def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |el1, idx1|
        arr.each_with_index do |el2, idx2|
            return true if el1 + el2 == target && idx2 > idx1
        end
    end
    false
end
#O(n*log(n))
def okay_two_sum?(arr, target_sum)
    sorted_arr = arr.sort
    sorted_arr.each_with_index do |el, idx|
        target = target_sum - el
        search_arr = sorted_arr
        search_arr.delete_at(idx)
        return true unless b_search(search_arr, target).nil?
    end
    false
end

def b_search(arr, target)
    mid = arr.length / 2
    return mid if arr[mid] == target
    return nil if arr.length <= 1
    if arr[mid] < target
        search_result = b_search(arr.drop(mid + 1), target)
        if search_result.nil?
            return nil
        else
            return mid + search_result + 1
        end
    else
        return b_search(arr.take(mid), target)
    end
    nil
end

#O(n)
def two_sum?(arr, target_sum)
    hash = Hash.new(0)
    arr.each do |element|
        hash[element] += 1
    end

    arr.each do |element|
        target = target_sum - element

        if target == element 
            return true if hash[target] > 1
        elsif hash[target] > 0
            return true
        end
    end
    false
end