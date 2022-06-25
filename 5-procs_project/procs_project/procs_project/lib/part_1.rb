#should accept an array and a block as args
# should return a new array where the elements are the results of the block when passed in each
#  element of the original array

def my_map(array, &prc)
    
    # array.map { |el| prc.call(el) }
    newArr=[]
    array.each do |ele|
        newArr<< prc.call(ele)
    end
    newArr
  end
#   ------------------------------------------------------------------------------
# should accept an array and a block as args
# should return a new array where the elements are elements of the original array where the block
#  resulted in true" &:odd?
def my_select(array, &prc)
    newArr=[]
    array.each do |ele|
        if prc.call(ele)
            newArr<<ele
        end
    end
newArr
  end
# -----------------------------------------------------------------------------------
# should accept an array and a block as args"
# should return a number representing the count of elements that
#  result in true when passed into the block 

def my_count(arr,&prc)
    count=0
   arr.each do |ele|
    if prc.call(ele)
        count+=1
    end
   end
  count
  end
#   ------------------------------------------------------------------------------------
# "should accept an array and a block as args"

def my_any?(array, &prc)
    array.each do |ele|
      if  prc.call(ele) == true
        return true
    end
end
false
  end
#   ---------------------------------------------------------------------------------

def my_all?(arr,&prc)
    arr.each do |ele|
       if  prc.call(ele) ==false
        return false
       end
    end
    true
end
# -------------------------------------------------------------------------
def my_none?(arr,&prc)

    arr.each do |ele|
       if  prc.call(ele) ==true
        return false
       end
    end
    true
end
# ------------------------------------------------------------------|