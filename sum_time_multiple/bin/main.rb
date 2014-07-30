require_relative '../lib/time'

added_time = Time.add("23:23:45", "22:03:45", "0:23:23", "23:45:56")
print "#{ added_time[:days] } Days & " if !added_time[:days].zero?
puts "#{ added_time[:hours] } : #{ added_time[:mins] } : #{ added_time[:secs] }"
