require 'test_helper'
 
class BitlyTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Bitly
  end
  
  test "raising exception when there are no API keys" do
    assert_raises ArgumentError do
      Bitly.new("","")
    end
    
    assert_raises ArgumentError do
      Bitly.new("wat", "")
    end
    
    assert_raises ArgumentError do
      Bitly.new("", "wat")
    end
  end
end
