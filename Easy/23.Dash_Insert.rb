# Have the function DashInsert(num) insert dashes ('-') between each
# two odd numbers in num. For example: if num is 454793 the output 
# should be 4547-9-3. Don't count zero as an odd number. 

def DashInsert(num)
  s_num = num.to_s.split('')
  s_num.each_index { |i| s_num[i].concat('-') if s_num[i].to_i.odd? and s_num[i+1].to_i.odd? }
  s_num.join
end
