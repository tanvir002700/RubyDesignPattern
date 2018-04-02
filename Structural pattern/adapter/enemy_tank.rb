require './enemy_attacker.rb'

class EnemyTank
  include EnemyAttacker

  def initialize
    @random = Random.new
  end

  def fire_weapon
    attack_damage = @random.rand(100)
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

