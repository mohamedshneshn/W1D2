# "should accept a string and a block as args

def reverser(string, &prc)
    prc.call(string.reverse)
  end
#   --------------------------------------------------------
# should accept a sentence string and a block as args
# should return a new sentence where every word becomes the result of the block when passed 
# the original word of the sentence" do

def word_changer(sentence, &prc)
       arr=[]
    sentence.split(" ").each do |word|
        arr<<prc.call(word)
    end
    arr.join(" ")

end
# ----------------------------------------------------------------------
# should accept a number and two procs as args

def greater_proc_value(num, prc1, prc2)
    op1 = prc1.call(num)
    op2= prc2.call(num)
    if op1 > op2
      return op1
    else
      return op2
    end
  end
#   ----------------------------------------------------------
def and_selector(array, prc1, prc2)
    newArr = []
  
    array.each do |el|
      if prc1.call(el) && prc2.call(el)
        newArr << el
      end
    end
   newArr
  end
#   ----------------------------------------------------------------
def alternating_mapper(array, prc1, prc2)
        arr = []
      
        array.each_with_index do |el, idx|
          if idx.even?
            arr << prc1.call(el)
          else
            arr << prc2.call(el)
          end
        end
      arr
      end
    #   -------------------------------------------------------
