# Have the function CountingMinutesI(str) take the str parameter 
# being passed which will be two times (each properly formatted 
# with a colon and am or pm) separated by a hyphen and return the
# total number of minutes between the two times. The time will be
# in a 12 hour clock format. For example: if str is 9:00am-10:00am
# then the output should be 60. If str is 1:00pm-11:00am the output
# should be 1320. 

def CountingMinutesI(str)  
  times = str.split(/-/)

  h_diff = times[1].split(/:/).first.to_i - times[0].split(/:/).first.to_i
  m_diff = times[1].split(/:/).last[0,2].to_i - times[0].split(/:/).last[0,2].to_i
  
  meridian1 = times[0].split(/:/).last[2,2]
  meridian2 = times[1].split(/:/).last[2,2]

  min_diff = (h_diff*60)+ m_diff
  min_diff += (60 * 12) unless meridian1.eql? meridian2
  min_diff += (60 * 24) if min_diff < 0
  return min_diff
end
