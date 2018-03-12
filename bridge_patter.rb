module EntertainmentDevice
  attr_reader :device_state, :max_seeting, :volume_level

  def button_five_pressed; end
  def button_six_pressed; end

  def device_feed_back
    if device_state > max_seeting || device_state < 1
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

