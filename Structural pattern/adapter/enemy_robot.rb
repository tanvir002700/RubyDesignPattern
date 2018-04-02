class EnemyRobot
  def initialize
    @random = Random.new
  end

  def smash_with_hand
    attack_damage = @random.rand(100)
    puts "Enemy Robot Does #{attack_damage} smash"
  end

  def walk_forward
    movement = @random.rand(100)
    puts "Enemy Robot moves #{movement} steps"
  end

  def react_to_human(name)
    puts "#{name} is control this robot"
  end
end

