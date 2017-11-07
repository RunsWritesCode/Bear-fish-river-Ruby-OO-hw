class Bear

attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end


  def take_fish_from_river(river)
      @stomach.push(river.lose_fish)
  end

  def roar
    return "ROAR"
  end

  def fish_count()
    return @stomach.length()
  end

end
