require "weather"

describe Weather do
  describe ".now" do
    it "prints the current weather" do
      Weather.new.now
    end
  end

  describe ".might_rain_today?" do
    it "will rain today" do
      Weather.new.might_rain_today?
    end
  end
end