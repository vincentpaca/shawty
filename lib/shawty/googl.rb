module Googl
  require 'open-uri'
  
  def self.new(key)
    Googl::Client.new(username, key)
  end
  
  class Client
    def initialize(key)
      @key = key
      raise ArgumentError.new("Please provide an api_key") if @key.nil?
    end
    
    def shorten(url)
    end
  end
end
