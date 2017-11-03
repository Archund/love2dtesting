timer = {}

local timers 					= {}
local globalStart				= love.timer.getTime()
local globalTime				= 0

local coolDown					= 0
local coolStart					= 0

-----------------------------------------------------------------------------------------

function timer.update(dt)

	globalTime = love.timer.getTime() - globalStart

	coolDown = love.timer.getTime() - coolStart


end

function timer.startCool()
	coolStart = love.timer.getTime()
end


function timer.getGlobal()
	return globalTime
end

function timer.getCool()
	return coolDown
end