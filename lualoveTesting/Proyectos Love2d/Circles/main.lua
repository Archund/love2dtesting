function love.load()
	radius = 0

	circles = { }
	counter = 2

end

function love.update(dt)
	radius = radius+ 2*dt

	counter = counter + dt

	if counter >= 1 then 
		circle = {x = love.math.random(500), y = love.math.random(500), r = 0, dim = 255}
		table.insert(circles,circle)
		counter = 0
	end


for i, circle in ipairs(circles)do
		
		circles[i].r = circles[i].r + 10*dt

		if circles[i].r >= 40 then
			circles[i].dim = circles[i].dim - 20*dt
		end

		if circles[i].dim <=200 then
			table.remove(circles[i])
		end
	end
end


function love.draw() 
	love.graphics.setColor(255,255,255)
	love.graphics.setBackgroundColor(0, 100, 100)
	love.graphics.setShader(myShader)

	for i, circle in ipairs(circles)do
		love.graphics.setColor(255,255,255,circles[i].dim)
		love.graphics.circle("fill", circles[i].x, circles[i].y, circles[i].r, 24)

	end
end

