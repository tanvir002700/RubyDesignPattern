require './entertainment_device'
require './remote_button.rb'

device = TvDevice.new('off', 20)
remote = TvRemoteMute.new(device)

remote.button_nine_pressed
