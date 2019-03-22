
# O(n * n!)
def anagrams?(str1, str2)
    anagrams_arr = str1.split('').to_a.permutation.to_a
    anagrams_arr.map! { |el| el.join('') }
    return true if anagrams_arr.include?(str2)
    false
end

#O(n ^ 2)
def second_anagram?(str1, str2)

    str1.each_char.with_index do |char, idx|
        if str2.index(char) 
            str2[ str2.index(char) ] = ""
        end
    end

    return str2 == ""
end

#o(n log n)
def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end

#O(n)
def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char do |char|
        hash1[char] += 1
    end

    str2.each_char do |char|
        hash2[char] += 1
    end
    
    hash1.keys.each do |key|
        return false if hash1[key] != hash2[key]
    end
    true
end
#O(n)
def fifth_anagram?(str1, str2)
    hash1 = Hash.new(0)

    str1.each_char do |char|
        hash1[char] += 1
    end

    str2.each_char do |char|
        hash1[char] -= 1
    end

    hash1.values.each {|value| return false if value != 0}
    true

end