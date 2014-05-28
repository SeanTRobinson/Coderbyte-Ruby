# Have the function ArithGeo(arr) take the array of numbers stored
# in arr and return the string "Arithmetic" if the sequence follows
# an arithmetic pattern or return "Geometric" if it follows a 
# geometric pattern. If the sequence doesn't follow either pattern
# return -1. An arithmetic sequence is one where the difference 
# between each of the numbers is consistent, where as in a geometric
# sequence, each term after the first is multiplied by some constant
# or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric 
# example: [2, 6, 18, 54]. Negative numbers may be entered as parameters,
# 0 will not be entered, and no array will contain all the same elements. 

def ArithGeo(arr)
  is_arith_seq = is_geo_seq = true
  arith_diff = (arr[1] - arr[0])
  geo_factor = (arr[1] / arr[0])
  
  arr[1..-1].each_with_index do |x, i|
    puts "#{arr[i+1]} ? #{arr[i]}"
    is_arith_seq = false if (arr[i+1] - arr[i] != arith_diff)
    is_geo_seq = false if (arr[i+1] / arr[i] != geo_factor)
  end
  
  return "Arithmetic" if is_arith_seq
  return "Geometric" if is_geo_seq
  return -1
end
