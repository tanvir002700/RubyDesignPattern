require './tv_remote.rb'
require './command.rb'
require './device_button'

tv = TvRemote.get_device

control = TvOn.new tv
button = DeviceButton.new control

button.press

puts tv.status
