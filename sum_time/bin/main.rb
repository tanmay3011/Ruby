require_relative '../lib/time'

time1 = "1:45:34"
time2 = "2:15:58"
time_first = Time.parse(time1) if Time.valid?(time1)
time_second = Time.parse(time2) if Time.valid?(time2)
added_time = time_first.add_time(time_second)
print "#{ added_time[:days] } Day & " if !added_time[:days].zero?
puts "#{ added_time[:hours] } : #{ added_time[:mins] } : #{ added_time[:secs] } \n"
