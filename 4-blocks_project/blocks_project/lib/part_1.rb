def select_even_nums(numbers)
  numbers.select(&:even?)  # numbers.select {|num| num.even?}
end
# --------------------------------------------

def reject_puppies(dogs)
  # dogs.reject { |dog| dog["age"] < 3 }
  dogs.select { |dog| dog["age"] > 2 } # cant use &
end
# -----------------------------------------
def count_positive_subarrays(arrays)              # 2D arr return numer of sum is positive
  arrays.count { |sub_array| sub_array.sum > 0 }
end
# ---------------------------------------------

def aba_translate(word)# if vowels=v+b+v
  vowels = "aeiou"
  new_word = ""

  word.each_char do |char|
    if vowels.include?(char)
      new_word += char + "b" + char
    else
      new_word += char
    end
  end

  new_word
end
# ------------------------------------------------------------------
def aba_array(words) #
  words.map { |word| aba_translate(word) }
end
# ------------------------------------------------------
  