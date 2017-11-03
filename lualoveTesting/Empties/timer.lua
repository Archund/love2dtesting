timer = {}

local timers 			= {}
local globalStart		= love.timer.getTime()
local globalTime		= 0

-----------------------------------------------------------------------------------------

function timer.update(dt)

	for i, tim in ipairs(timers) do

		if not timer[i],stop then
			timers[i].currentTime = love.timer.getTime() - timers[i].startTime
		else if timer[i].del = true 
			timer[i] = nil 
		end
	end

	globalTime = love.timer.getTime() - globalStart



end

-----------------------------------------------------------------------------------------

function timer.newTimer(name)

	tim 				= {}
	tim.name 			= name
	tim.startTime 		= love.timer.getTime()
	tim.currentTime 	= 0
	tim.stop 			= false
	tim.del 			= false

	table.insert(timers, tim)
	
end

-----------------------------------------------------------------------------------------

function timer.getTime(name)

	for i, tim in ipairs(timers) do

		if timers[i].name == name then
			return timers[i].currentTime
		end

	end

	return 0

end

-----------------------------------------------------------------------------------------

function timer.delTimer(name)

	for i, tim in ipairs(timers) do

		if timers[i].name == name then
			timers[i].stop = true 
			timer[i].del = true
			break
		end

	end

end

-----------------------------------------------------------------------------------------

function timer.stop(name)

	for i, tim in ipairs(timers) do

		if timers[i].name == name then
			timers[i].stop = true
			break
		end

	end

end

function timer.getGlobal()
	return globalTime
end