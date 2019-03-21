require "byebug"
list = [0, 3, 5, 4, -5, 10, 1, 90]

# O(n ^ 2)
def phase_one(list)
    list.each do |i|
        list.all? do |j|
            return i if i < j
        end
    end
end

# O(n)
def phase_two(list)
    min = list.first
    list.each do |i|
        min = i if i < min
    end
    min
end

list = [5, 3, -7]

# O(n ^ 2)
def largest_contiguous(list)
    sub_sums = []
    i = 0
    while i < list.length
        j = 0
        while i + j < list.length
            sub = list[i..j]
            sub_sums << sub.sum
            j += 1
        end
        i += 1
    end
    sub_sums.max
end

list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]

# O(n)
def fast_largest_sum(list)
    
    current_sum = list.sum
    best_sum = current_sum
    i = 0
    j = 0
    while i < list.length
        current_sum = list[j..i].sum
        best_sum = current_sum if current_sum > best_sum
        if current_sum < 0
            j = i
        end
        i += 1
    end
    best_sum
end


