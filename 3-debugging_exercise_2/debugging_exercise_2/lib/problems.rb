# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
    return false if num < 2
    (2...num).none? { |factor| num % factor == 0 }
end
# -------------------------------------------------------------
def largest_prime_factor(num)
    num.downto(2) { |factor| return factor if num % factor == 0 && prime?(factor) }
end
# --------------------------------------------------------------
def unique_chars?(string)
    already_seen = []

    string.each_char do |char|
        return false if already_seen.include?(char)
        already_seen << char
    end

    true
end
# -----------------------------------------------------------------
def dupe_indices(array)
    indices = Hash.new { |h, k| h[k] = [] }
    array.each_with_index { |ele, i| indices[ele] << i }
    indices.select { |ele, indices| indices.length > 1 }
end


# ----------------------------------------------------------------------
def ana_array(arr_1, arr_2)
     ele_count(arr_1)==ele_count(arr_2)
end

def ele_count(arr)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1 }
    hash
end