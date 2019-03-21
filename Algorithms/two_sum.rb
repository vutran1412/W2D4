def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |el1, idx1|
        arr.each_with_index do |el2, idx2|
            return true if el1 + el2 == target && idx2 > idx1
        end
    end
    false
end

def okay_two_sum?(arr, target_sum)

end

def two_sum?(arr, target_sum)

end