# Have the function DivisionStringified(num1,num2) take both
# parameters being passed, divide num1 by num2, and return 
# the result as a string with properly formatted commas. If 
# an answer is only 3 digits long, return the number with no
# commas (ie. 2 / 3 should output "1"). For example: if num1
# is 123456789 and num2 is 10000 the output should be "12,345". 

#Failed Tests
# 1. When the input was 503394930 and 43 your output was incorrect.
# 2. When the input was 101077282 and 21123 your output was incorrect.

def DivisionStringified(num1,num2)
  res = (num1.to_f/num2.to_f).round.to_s.chars.to_a.reverse
  res.each_slice(3).map(&:join).join(",").reverse       
end
