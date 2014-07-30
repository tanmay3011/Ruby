require_relative '../lib/time'

added_time = Time.add("3:45:14", "02:15:58")
print "#{ added_time[:days] } Day & " if !added_time[:days].zero?
puts "#{ added_time[:hours] } : #{ added_time[:mins] } : #{ added_time[:secs] }"
