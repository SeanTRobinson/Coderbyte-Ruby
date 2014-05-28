Have the function SimpleAdding(num) add up all the numbers from 1 to
num. For the test cases, the parameter num will be any number from 1 to 1000.

def SimpleAdding(num)
  (1..num).inject { |sum, x| sum + x }      
end
