rickroll = {}

local xScale 			= 1
local yScale			= 1
local startTime			= 0

-----------------------------------------------------------------------------------------

function rickroll.update(dt)

	xScale = mH.getScreenWidth()/video:getWidth()
	yScale = mH.getScreenHeight()/video:getHeight()
	if timer.getGlobal()-startTime >= 60 then
		mH.stateSwitch()
	end

end

-----------------------------------------------------------------------------------------

function rickroll.draw()


	love.graphics.draw( video, 0, 0 , 0, xScale, yScale)


	if not video:isPlaying() then
		video:play()
	end

end

-----------------------------------------------------------------------------------------

function rickroll.init()
	startTime = timer.getGlobal()
end

