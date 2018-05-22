require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

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
  end

  def test_river_name1
    assert_equal("Amazon", @river1.name)
  end

  def test_river_name2
    assert_equal("Clyde", @river2.name)
  end

  def test_river_name3
    assert_equal("Kelvin", @river3.name)
  end

  def test_fish_in_river1
    assert_equal(3, @river1.fish_count)
  end

  def test_fish_in_river2
    assert_equal(2, @river2.fish_count)
  end

  def test_fish_in_river3
    assert_equal(0, @river3.fish_count)
  end

  def test_spawning
    @river3.spawning("Charles")
    @river3.spawning("Lizzy")
    assert_equal(2, @river3.fish_count)
  end

end
