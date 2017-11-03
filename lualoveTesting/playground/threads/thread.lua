c = love.thread.getChannel("test")

--while true do
	num = c:pop()
	print(num)
	if num == "go" then
	  print("starting")
	  res = "a"	  --print(res)
	  c:supply(res)
	  text = "hello"
	end
--end