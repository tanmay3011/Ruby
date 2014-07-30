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
    time_arguments.each do |time|
      new_time += (Time.parse(time) - BASE_TIME)
    end
    days = (Time.now.day == new_time.day) ? 0 : 1
    return({ days: days, hours: new_time.hour, mins: new_time.min, secs: new_time.sec })
  end
end
