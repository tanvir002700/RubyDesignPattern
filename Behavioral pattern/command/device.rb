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
