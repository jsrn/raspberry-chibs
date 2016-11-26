require "sinatra"
require_relative "lib/weather.rb"
require_relative "lib/speech.rb"
require_relative "lib/calendar.rb"

set :public_folder, 'web'

get '/' do
  File.read("web/index.html")
end

get "/weather" do
  Speech.say(Weather.new.now)
end

get "/schedule" do
  Speech.say(Calendar.new.run)
end

