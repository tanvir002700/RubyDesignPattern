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
