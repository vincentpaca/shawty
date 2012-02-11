require 'test_helper'

class ShawtyTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Shawty
  end
  
  test "raising exception when url is blank" do
    username = "vincentpaca"
    key = "R_1b6fbe0b4987dc3801ddb9f812d60f84"
    assert_raises ArgumentError do
      Shawty.shawtify("","bitly", username, key)
    end
  end
  
  test "shorten url by bitly" do
    username = "vincentpaca"
    key = "R_1b6fbe0b4987dc3801ddb9f812d60f84"
    assert(Shawty.shawtify("http://www.google.com","bitly", username, key).include? "bit.ly")  
  end
  
#  test "shorten url by google" do
#    username = ""
#    key = "AIzaSyDZB5i7lI5t93u8sLM_-yNdz5OSrFqKUsU"
#    assert(Shawty.shawtify("http://google.com", "google", "", key).include? "goo.gl")  
#  end
end
