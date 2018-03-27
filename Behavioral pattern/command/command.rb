module Command
  def initialize(device)
    @device = device
  end

  def execute; end
  def undo; end
end

class TvOn
  include Command

  def execute
    @device.on
  end

  def undo
    @device.off
  end
end

class TvOff
  include Command

  def execute
    @device.off
  end

  def undo
    @device.on
  end
end

class TvVolumeUp
  include Command

  def execute
    @device.volume_up
  end

  def undo
    @device.volume_down
  end
end

class TvVolumeDown
  include Command

  def execute
    @device.volume_down
  end

  def undo
    @device.volume_up
  end
end

