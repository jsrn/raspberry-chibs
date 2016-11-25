require_relative "lib/weather.rb"

class Wintermute
  def initialize
    puts Weather.new.weather_from_api
  end
end

Wintermute.new