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
