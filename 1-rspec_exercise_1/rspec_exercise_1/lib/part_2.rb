def hipsterfy (word)
vowels="aeiou"
i=word.length-1
while i >= 0
    if vowels.include?(word[i])
     return word[0...i]+word[i+1..-1]
    end
    i-=1
end
return word
end

# -------------------------------------------
def vowel_counts (str)
    hash=Hash.new(0)
    vowels="aeiou"
    str.each_char.with_index do |char,i|

     if vowels.include?(char.downcase)
        hash[char.downcase]+=1
     end
    end
hash
end
# -------------------------------------------------

def caesar_cipher (msg,n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    newStr=""
    msg.each_char.with_index do |char,i|
        if alphabet.include?(char)
            index= alphabet.index(char)
            newStr+=alphabet[(index+n)%26]
        else
            newStr+=char
        end


    end
    return newStr

end
# ---------------------------------------------------------------------------------------
