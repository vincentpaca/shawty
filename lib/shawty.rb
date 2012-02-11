module Shawty
  require "shawty/bitly"
  
  def self.shawtify(url, provider, user, key)
    if provider == "bitly"
      raise ArgumentError.new("URL to shorten is required") if url.blank?
      
      bitly = Bitly.new(user, key)
      bitly.shorten(url)
    elsif provider == "google"
      googl = Googl.new(key)
      googl.shorten(url)
    end
  end
end
