def windowed_max_range(array, window_size)
    current_max_range = nil
    i = 0
    while i + window_size - 1 < array.length
        window = array[i..i + window_size - 1]
        window_range = window.max - window.min
        current_max_range = window_range if current_max_range.nil? || window_range > current_max_range
        i += 1
    end
    current_max_range
end