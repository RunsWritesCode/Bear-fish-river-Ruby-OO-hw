class River

  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fish = fishes
  end

  def fish_count()
    return @fish.length()
  end

  def lose_fish
    @fish.pop
  end

end
