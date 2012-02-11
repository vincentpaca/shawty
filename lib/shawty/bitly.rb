module Bitly
  require 'open-uri'
  
  def self.new(username, key)
    Bitly::Client.new(username, key)
  end
  
  class Client
    def initialize(username, key)
      @username = username
      @key = key
      raise ArgumentError.new("Please provide a login and api_key") if @username.nil? || @key.nil? || @username == "" || @key == ""
    end
    
    def shorten(url)
      version = "2.0.1"
      bitly_url = "http://api.bit.ly/v3/shorten?longUrl=#{url}&login=#@username&apiKey=#@key&format=txt"
      short_url = open(bitly_url, "UserAgent" => "Ruby-ExpandLink").read
    end
  end
end
