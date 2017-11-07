require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new('Yogi')
    @fish1 = Fish.new('Babel')
    @fish2 = Fish.new('Unfortunate')
    @fish3 = Fish.new('Frogdog')
    @river = River.new('Amazon', [@fish1, @fish2, @fish3])
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.name())
  end

  def test_bear_fishes_from_river()
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.stomach.length)
  end

  def test_bear_can_roar()
    assert_equal("ROAR", @bear.roar)
  end

  def test_fish_count()
    assert_equal(0, @bear.stomach.length)
  end

end
