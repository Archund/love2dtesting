require 'bit' --libraries does bitwise comparison
--  e.g  "7 xor 8" -> 0111 ^ 1000 = 
function love.load()
	width 						= 256
	height 						= 256
	c 							= 0
	img 						= love.image.newImageData(width, height)
	posx 						= 0
	posy 						= 0
	flag						= false
end



function love.update(dt)

	posx, posy = love.mouse.getPosition()

	if flag == false then 
		for i=0,width-1 do
			for j=0,height-1 do
				c = bit.bxor(i,j)
				cpos = bit.bxor(posx,posy)
				cposx = posx%255
				cposy = posy%255
				img:setPixel(i,j,c%255,c%255,c%255,cpos%255)
			end
		end

		image = love.graphics.newImage(img)

	end

end



function love.draw()
	love.graphics.draw(image, 0, 0, 0, 2, 2)

end
