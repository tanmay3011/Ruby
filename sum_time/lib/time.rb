require "time"
class Time

  REGEX_TIME = /([01]?[0-9]|2[0-3]):([0-5][0-9]|6[0]):([0-5][0-9]|6[0])/
  def self.valid?(time)
    time =~ REGEX_TIME
  end

  def add_time(time)
    new_time = self + (time - Time.parse("00:00:00"))
    days = (Time.now.day == new_time.day) ? 0 : 1
    return({ days: days, hours: new_time.hour, mins: new_time.min, secs: new_time.sec })
  end
end
