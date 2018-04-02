require './enemy_robot.rb'
require './enemy_tank.rb'
require './enemy_robot_adapter.rb'

tank = EnemyTank.new
tank.fire_weapon

robot = EnemyRobot.new
robot.smash_with_hand

robot_adapter = EnemyRobotAdapter.new(robot)
robot_adapter.fire_weapon
