require 'minitest/autorun'
require 'supersub'

class SuperSubTest < Minitest::Test
  setup do
    @string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,?!"
  end
  
  def test_superscript
    assert_equal "hello world",
      Super.hi("english")
  end
end