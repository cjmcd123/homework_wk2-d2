require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Terry")
    @fish3 = Fish.new("Betty")
    @fish4 = Fish.new("Jenny")
    @fish5 = Fish.new("Bob")
  end

  def test_fish_name1
    assert_equal("Steve", @fish1.name)
  end

  def test_fish_name2
    assert_equal("Betty", @fish3.name)
  end

end
