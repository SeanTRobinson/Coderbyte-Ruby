# Have the function LetterCountI(str) take the str parameter being 
# passed and return the first word with the greatest number of 
# repeated letters. For example: "Today, is the greatest day ever!"
# should return greatest because it has 2 e's (and 2 t's) and it 
# comes before ever which also has 2 e's. If there are no words with
# repeating letters return -1. Words will be separated by spaces. 

def LetterCountI(str)
  match = str.scan(/\w+/).max_by{ |w| w.chars.group_by(&:to_s).values.map(&:size).max }   
  (match.chars.sort.join.squeeze.length == match.length) ? -1 : match 
end
