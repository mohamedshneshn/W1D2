# should accept an array of words as an arg
# when all words are properly capitalized (first letter of word uppercase, other letters lowercase)
# should return true

def all_words_capitalized?(arr)
    arr.all? {|word| word.capitalize==word}

  end
# ------------------------------------------------------------

# should accept an array of urls as an arg
def no_valid_url?(arr)                     #["appacademy.io", "sennacy.com", "heyprogrammers.org"]
    endings = [".com", ".net", ".io", ".org"]
    # arr.each do |str|
    #     if endings.include?("."+str.split(".")[-1])
    #         return false
    #     end
    # end
    # true
    arr.none? { |str| endings.include?("."+str.split(".")[-1]) }
    
end
# p no_valid_url?(["appacademy.io", "sennacy.com", "heyprogrammers.org"]) 
# --------------------------------------------------------------------------------------
# should accept an array of student hashes as an arg
# when at least one student has an average grade of 75 or higher" do
#     # it "should return true
# students = [
#     { name: "Alice", grades: [94, 96] },
#     { name: "Bob", grades: [50, 60] }
#   ]
def any_passing_students?(arr)
    arr.any? {|hash| (hash[:grades].sum / hash[:grades].length) >=75}

  end
#   --------------------------------------------------------------
