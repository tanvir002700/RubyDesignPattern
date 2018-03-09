module EnemyAttacker
  def fire_weapon; end
  def drive_forward; end
  def assign_driver; end
end

class EnemyTank
  include EnemyAttacker

  @random = Random.new

  def fire_weapon
    attack_damage = @Random.random(100)
    puts "Enemy Tank Does #{attack_damage} damage"
  end

  def drive_forward
    movement = @random.random(100)
    puts "Enemy Tank moves #{movement} steps"
  end

  def assign_driver(name)
    puts "#{name} is driving the tank"
  end
end
