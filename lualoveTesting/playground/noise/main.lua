function love.load()
	width 						= 64
	height 						= 64
	img 						= love.image.newImageData(width, height)
	flag 						= false
end


function love.update(dt)
	if flag == false then
		for i=0,width-1 do
			for j=0,height-1 do
				img:setPixel(i,j,love.math.noise(i,j,love.math.randomNormal(100,125))*255,love.math.noise(i,j,love.math.randomNormal(100,125))*255,love.math.noise(i,j,love.math.randomNormal(100,125))*255,255)
			end
		end

		image = love.graphics.newImage(img)
		--flag = true
	end
end


function love.draw()

	love.graphics.draw(image, 0, 0, 0, 8, 8)
end
