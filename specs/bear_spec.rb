require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Terry")
    @fish3 = Fish.new("Betty")
    @fish4 = Fish.new("Jenny")
    @fish5 = Fish.new("Bob")

    group1 = [@fish1, @fish2, @fish3]
    group2 = [@fish4, @fish5]
    group3 = []

    @river1 = River.new("Amazon", group1)
    @river2 = River.new("Clyde", group2)
    @river3 = River.new("Kelvin", group3)

    @bear1 = Bear.new("Yogi", "Grizzly")
    @bear2 = Bear.new("Pete", "Polar")
    
  end

  def test_bear_name1
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_name2
    assert_equal("Pete", @bear2.name)
  end

  def test_bear_type1
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_type2
    assert_equal("Polar", @bear2.type)
  end

  def test_bear_eating_from_river1
    @bear1.eats(@river1)
    assert_equal(2, @river1.fish_count)
    assert_equal(1, @bear1.eaten)
  end

  def test_bear_eating_from_river2
    @bear2.eats(@river2)
    assert_equal(1, @river2.fish_count)
    assert_equal(1, @bear2.eaten)
  end

  def test_bear_eating_from_river3__no_fish
    @bear1.eats(@river3)
    assert_equal(0, @river3.fish_count)
    assert_equal(0, @bear1.eaten)
  end

  def test_bear_roar
    assert_equal("Rrrroarrr", @bear1.roar)
  end

  def test_bear_eats_lots
    @bear1.eats(@river1)
    @bear1.eats(@river1)
    assert_equal(1, @river1.fish_count)
    assert_equal(2, @bear1.eaten)
  end

  def test_bear_has_not_eaten
    assert_equal(0, @bear1.eaten)
  end

end
