class Bear

  attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eats(river)
    if river.fish_count > 0
      @stomach << river.fish[0]
      river.fish.shift
    else
      return
    end
  end

  def eaten
    return @stomach.length
  end

  def roar
    return "Rrrroarrr"
  end

end
