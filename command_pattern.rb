module ElectronicDevice
  def on; end
  def off; end
end

class Television
  include ElectronicDevice

  def on
    puts "Tv is On"
  end

  def off
    puts "Tv is Off"
  end
end

module Command
  def execute; end
  def undo; end
end

class TurnTvOn
  include Command

  def initialize(newDevice)
    @theDevice = newDevice
  end

  def execute
    @theDevice.on
  end

  def undo
    @theDevice.off
  end
end

class TurnTvOff
  include Command

  def initialize(newDevice)
    @theDevice = newDevice
  end

  def execute
    @theDevice.off
  end

  def undo
    @theDevice.on
  end
end

class DeviceButton
  def initialize(new_command)
    @the_command = new_command
  end

  def press
    @the_command.execute
  end

  def press_undo
    @the_command.undo
  end
end

class TVRemote
  def self.getDevice
    new.Television
  end
end

