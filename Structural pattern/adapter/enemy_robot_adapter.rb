require './enemy_attacker.rb'

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

