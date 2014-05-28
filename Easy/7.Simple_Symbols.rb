# Have the function SimpleSymbols(str) take the str parameter
# being passed and determine if it is an acceptable sequence
# by either returning the string true or false. The str 
# parameter will be composed of + and = symbols with several
# letters between them (ie. ++d+===+c++==a) and for the string
# to be true each letter must be surrounded by a + symbol. So 
# the string to the left would be false. The string will not be
# empty and will have at least one letter. 

def SimpleSymbols(str)
  return false if !str.index(/[A-Za-z]/) or str.empty?
  str.gsub!(/(\+[A-Za-z])+\+/,'')
  return false if str.index(/[A-Za-z]/)
  return true
end
