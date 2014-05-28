# Have the function MeanMode(arr) take the array of numbers
# stored in arr and return 1 if the mode equals the mean, 
# 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should
# return 1 because the mode (3) equals the mean (3)). The array
# will not be empty, will only contain positive integers, and 
# will not contain more than one mode. 

def MeanMode(arr)
  mode = arr.group_by{|i| i}.max{|x,y| x[1].length <=> y[1].length}[0]         
  mean = arr.inject(:+).to_f/arr.size
  mode == mean ? 1 : 0
end
