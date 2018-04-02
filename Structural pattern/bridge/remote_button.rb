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
