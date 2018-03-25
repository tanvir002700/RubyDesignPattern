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
    @status = false
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

  def initialize(device)
    @device = device
  end

  def execute
    @device.on
  end

  def undo
    @device.off
  end
end

class TvOff
  include Command

  def initialize(device)
    @device = device
  end

  def execute
    @device.off
  end

  def undo
    @device.on
  end
end

class TvVolumeUp
  def initialize(device)
    @device = device
  end

  def execute
    @device.volume_up
  end

  def undo
    @device.volume_down
  end
end

class TvVolumeDown
  def initialize(device)
    @device = device
  end

  def execute
    @device.volume_down
  end

  def undo
    @device.volume_up
  end
end

class DeviceButton
  def initialize(command)
    @command = command
  end

  def press
    @command.execute
  end

  def press_undo
    @command.undo
  end
end

class TVRemote
  def self.get_device
    Television.new
  end
end

