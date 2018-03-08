module ElectronicDevice
  attr_accessor :status, :volume

  def on; end
  def off; end
  def volume_up; end
  def volume_down; end
end

class Television
  include ElectronicDevice

  def initialize
    @volume = 0
    @status = false
  end

  def on
    puts "Tv is On"
    @status = true
  end

  def off
    puts "Tv is Off"
  end

  def volume_up
    @volume += 1
  end

  def volume_down
    @volume -= 1
  end
end

module Command
  def execute; end
  def undo; end
end

class TvOn
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

class TvOff
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

class TvVolumeUp
  def initialize(new_device)
    @the_device = new_device
  end

  def execute
    @the_device.volume_up
  end

  def undo
    @the_device.volume_down
  end
end

class TvVolumeDown
  def initialize(new_device)
    @the_device = new_device
  end

  def execute
    @the_device.volume_down
  end

  def undo
    @the_device.volume_up
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
  def self.get_device
    Television.new
  end
end

