module EntertainmentDevice
  attr_reader :device_state, :max_setting, :volume_level

  def button_five_pressed; end
  def button_six_pressed; end

  def device_feed_back
    if device_state > max_setting || device_state < 1
      @device_state = 0
    end
  end

  def button_seven_pressed
    @volume_level += 1
    puts "volume at #{volume_level}"
  end

  def button_six_pressed
    @volume_level -= 1
    puts "volume at #{volume_level}"
  end
end

class TVDevice
  include EntertainmentDevice

  def initialize(device_state, max_setting)
    @device_state = device_state
    @max_setting = max_setting
  end

  def button_five_pressed
    puts "channel down"
    @device_state -= 1
  end

  def button_six_pressed
    puts "channel up"
    @device_state += 1
  end
end

module RemoteButton
  attr_reader :device

  def initialize(device)
    @device = device
  end

  def buffton_five_pressed
    device.button_five_pressed
  end

  def button_six_pressed
    device.button_six_pressed
  end

  def device_feed_back
    device.device_feed_back
  end

  def button_nine_pressed; end
end

class TvRemoteMute
  include RemoteButton

  def initialize(device)
    super(device)
  end

  def button_nine_pressed
    puts "tv is mute"
  end
end
