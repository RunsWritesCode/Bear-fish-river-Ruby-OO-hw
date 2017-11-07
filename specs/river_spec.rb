require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new('Amazon', [@fish1, @fish2, @fish3])
    @fish1 = Fish.new('Babel')
    @fish2 = Fish.new('Unfortunate')
    @fish3 = Fish.new('Frogdog')
    @bear = Bear.new('Yogi')
  end

  def test_fish_name()
    assert_equal("Babel", @fish1.name())
  end

# 'river_starts_with_fish' also tests fish count (was tested early on to check setup)
  def test_river_starts_with_fish()
    assert_equal(3, @river.fish_count())
  end

  def test_bear_takes_fish()
    @bear.take_fish_from_river(@river)
    assert_equal(2, @river.fish_count())
  end

end
