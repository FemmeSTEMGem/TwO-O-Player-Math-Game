class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

end


# buddy = Player.new('Player2')
# p buddy