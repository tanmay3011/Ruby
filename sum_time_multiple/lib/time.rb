require "time"
class Time

  REGEX_TIME = /^([0-1]?[0-9]|2[0-3]):([0-5]?[0-9]|6[0]):([0-5]?[0-9]|6[0])$/
  BASE_TIME = Time.parse("00:00:00")

  def self.valid?(*time)
    time.all? { |time| time =~ REGEX_TIME }
  end

  def self.add(*time_arguments)
    abort("Wrong time format") if !(valid?(*time_arguments))
    new_time = BASE_TIME
    days = 0
    time_arguments.each do |time|
      initial_day = new_time.day
      new_time += (Time.parse(time) - BASE_TIME)
      initial_day == new_time.day ? 0 : days += 1
    end
    return({ days: days, hours: new_time.hour, mins: new_time.min, secs: new_time.sec })
  end
end
