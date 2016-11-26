require_relative "lib/weather.rb"
require_relative "lib/calendar.rb"

class Chibs
  def initialize
    puts Weather.new.now
    Calendar.new.run
  end
end

Chibs.new