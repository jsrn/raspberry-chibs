require "json"
require "pry"

class Weather
  def now
    %(
      It's #{current_temperature} degrees with a high of #{max_temperature}
      and a low of #{min_temperature}. There is a #{percentage_chance_rain_today} percent
      chance of rain today
    )
  end

  def min_temperature
    f_to_c(todays_weather["data"].first["temperatureMin"])
  end

  def max_temperature
    f_to_c(todays_weather["data"].first["temperatureMax"])
  end

  def current_temperature
    f_to_c(current_weather["temperature"])
  end

  def percentage_chance_rain_today
    (todays_weather["data"].first["precipProbability"] * 100).round
  end

  def might_rain_today?
    percentage_chance_rain_today > 0
  end

  private

  def todays_weather
    weather_from_api["daily"]
  end

  def current_weather
    weather_from_api["currently"]
  end

  def weather_from_api
    @weather_from_api ||= JSON.parse(File.open("dark_sky_sample_response").read)
  end

  def f_to_c(degrees_f)
    ((degrees_f - 32) * (5.0 / 9.0)).round
  end
end
