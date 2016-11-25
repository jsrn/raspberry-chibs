require "weather"

describe Weather do
  describe ".now" do
    it "prints the current weather" do
      Weather.new.now
    end
  end

  describe ".will_rain_today?" do
    it "will rain today" do
      puts Weather.new.will_rain_today?
    end
  end

  describe ".weather_from_api" do
    it "returns json" do
      expect(Weather.new.weather_from_api.is_a? Hash).to eql(true)
    end
  end
end