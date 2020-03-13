#  #!/usr/bin/ruby -Ks

t = Time.now
puts t

sleep(1)
t = Time.now
puts t
sleep(3)
t = Time.now
puts t

#timeInteger = t.tv_sec
timeFloat = t.to_f

#print("現在時刻:" , t, "¥n")
#print("経過秒数(整数)", timeInteger, "¥n")
print("経過秒数(浮動小数点数)", timeFloat, "¥n¥n")
#
#timeInteger = timeInteger + 3600
#
#newTime = Time.at(timeInteger)
#print("1時間後の時刻:" , newTime, "¥n")
