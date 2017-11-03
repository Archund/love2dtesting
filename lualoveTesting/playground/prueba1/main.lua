function love.load()
	x = 200
	y = 100
	r = 30
end

function love.update(dt)
	if love.keyboard.isDown('d') then
		x = x+100*dt
	elseif love.keyboard.isDown('a') then
		x = x-100*dt
	end
end 

function love.draw()
	love.graphics.print('Hello World')
	love.graphics.circle('fill', x, y, r)
	love.graphics.circle('fill', x, y+(3*r), 2*r)
	love.graphics.circle('fill', x, y+(6*r)+(3*r), 4*r)
end