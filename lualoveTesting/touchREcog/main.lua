require("jest")
local tick = require("tick")

function love.load()

	tick.rate = .03
	tick.timescale = 1
	draw = false

end



function love.update(dt)
	jest.update()



end




function love.draw()
	love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)



	if draw then
		love.graphics.circle("fill", 60, 60, 20,20)
	end

	if love.mouse.isDown(1) then
		love.graphics.circle("fill", love.mouse.getX(), love.mouse.getY(), 20,20)
	end

	if jest.debug ~= nil then
		love.graphics.print(jest.debug, 10, 10, 0, 5,5)
	end

end



function love.mousereleased(x,y,button,istouch)

	jest.release(x, y, button, istouch)
end

function love.mousepressed(x,y,button,istouch)
		jest.touch(x, y, button, istouch)
end