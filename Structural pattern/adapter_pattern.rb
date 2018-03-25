module EnemyAttacker
  def fire_weapon; end
  def drive_forward; end
  def assign_driver(name); end
end

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

class EnemyRobotAdapter
  include EnemyAttacker

  def initialize(robot)
    @random = Random.new
    @robot = robot
  end

  def fire_weapon
    @robot.smash_with_hand
  end

  def drive_forward
    @robot.walk_forward
  end

  def assign_driver(name)
    @robot.react_to_human(name)
  end
end

