require './device.rb'

class TvRemote
  def self.get_device
    Television.new
  end
end

