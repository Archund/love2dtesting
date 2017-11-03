
function love.load()

	love.graphics.setDefaultFilter("nearest")

	l1							= love.graphics.newImage("model/lvl1.png")
	l2							= love.graphics.newImage("model/lvl2.png")
	l3							= love.graphics.newImage("model/lvl3.png")
	l4							= love.graphics.newImage("model/lvl4.png")
	l5							= love.graphics.newImage("model/lvl5.png")
	l6							= love.graphics.newImage("model/lvl6.png")
	l7							= love.graphics.newImage("model/lvl7.png")
	l8							= love.graphics.newImage("model/lvl8.png")
	l9							= love.graphics.newImage("model/lvl9.png")
	l10							= love.graphics.newImage("model/lvl10.png")
	l11							= love.graphics.newImage("model/lvl11.png")
	l12							= love.graphics.newImage("model/lvl12.png")
	l13							= love.graphics.newImage("model/lvl13.png")
	l14							= love.graphics.newImage("model/lvl14.png")
	l15							= love.graphics.newImage("model/lvl15.png")
	l16							= love.graphics.newImage("model/lvl16.png")
	l17							= love.graphics.newImage("model/lvl17.png")
	l18							= love.graphics.newImage("model/lvl18.png")
	l19							= love.graphics.newImage("model/lvl19.png")


		imgtable					= {l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16,l17,l18,l19}

	rot = 0
end


function love.update()

	if love.keyboard.isDown("right") then
		rot = rot + .01
	elseif love.keyboard.isDown("left") then
		rot = rot - .01
	end 

end 


function love.draw()

	for i, img in ipairs(imgtable) do

		love.graphics.draw(img, 250, 250-i*2.5, rot, 5, 5, 8, 8)
		--love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
	end
end