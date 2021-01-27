require "test_helper"

class BottomTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Bottom::VERSION
  end

  def test_parity
    enc = Bottom.encode("test")
    dec = Bottom.decode(enc)
    assert_equal("test", dec)
  end

  def test_error
    assert_raises( Bottom::DecodeError ) { Bottom.decode("a") }
  end

end
