class Speech
  def self.say(words)
    words = clean_words(words)
    synthesize(words)
  end

  def self.synthesize(words)
    system "espeak -v en-sc -k5 -s150 \"#{words}\""
  end

  def self.clean_words(words)
    words = words.split(";").first
    words = words.split("&").first
    words = words.gsub(/[^A-Za-z0-9 ]/, "")
    words
  end

  def self.time_to_text(time)
    hours, minutes = time.split(":")
    minutes = "oclock" if minutes == "00"
    "#{hours} #{minutes}"
  end
end