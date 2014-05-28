# Have the function LongestWord(sen) take the sen parameter
# being passed and return the largest word in the string. If
# there are two or more words that are the same length, return
# the first word from the string with that length. Ignore
# punctuation and assume sen will not be empty. 

def LongestWord(sen)
  words = sen.split.map { |s| s.gsub(/\W/, '') }
  longest = words[0]
  words.each { |word| longest = word if word .length > longest.length }
  longest
end
