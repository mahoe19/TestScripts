file_sizeB = 5091983; %Bytes
file_sizeb = file_sizeB*8; %bit

switching_timeMS = 7.633; %Ms
switching_time_s = switching_timeMS/1000 %second
switching_Hz = 1/switching_time_s %hz

calculated_speed = switching_Hz * file_sizeb

expected_speed = 1066*1000000
expected_time_s = file_sizeb/expected_speed
expected_Hz = 1/expected_time_s