# Have the function LetterCapitalize(str) take the str parameter 
# being passed and capitalize the first letter of each word. Words
# will be separated by only one space. 

def LetterCapitalize(str)
  str.split.map(&:capitalize).join(' ')       
end
