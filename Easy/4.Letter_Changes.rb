# Have the function LetterChanges(str) take the str parameter
# being passed and modify it using the following algorithm. 
# Replace every letter in the string with the letter following
# it in the alphabet (ie. c becomes d, z becomes a). Then
# capitalize every vowel in this new string (a, e, i, o, u) and
# finally return this modified string. 

def LetterChanges(str)
  str.split('').each_with_index do |ch, index|
    ch.next! if ch =~ /[A-Za-z]/
    ch.upcase! if %w[a e i o u].include? ch
    str[index] = ch
  end
  str      
end
