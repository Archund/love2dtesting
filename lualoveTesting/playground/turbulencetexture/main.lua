
function love.load()
	width 						= 256
	height 						= 256
	mHeight 						= 0
	noise 						= love.image.newImageData(width, height)
	sNoise 						= love.image.newImageData(width, height)
	tNoise 						= love.image.newImageData(width, height)
	img 						= love.image.newImageData(width, height)
	posx 						= 0
	posy 						= 0
	flag						= false
end



function love.update(dt)

	posx, posy = love.mouse.getPosition()

	mHeight = 256 - posy/2

	if flag == false then 
		
		generateNoise()
		generateSmoothNoise()
		generateTurbulentNoise()

		image = love.graphics.newImage(sNoise)

	end

end



function love.draw()
	--love.graphics.setBackgroundColor(100, 100, 100, 255)
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(image, 0, 0, 0, 2, 2)
	love.graphics.setColor(200, mHeight, 200, 255)
	love.graphics.rectangle('fill', 560, 0, 20, 512)

end

function generateNoise()
	for i=0,width-1 do
		for j=0,height-1 do
			noise:setPixel(i,j, 255,255,255, love.math.noise(i,j)*255)
		end
	end
end


function generateSmoothNoise()
	for i=0,width-1 do
		for j=0,height-1 do
			sNoise:setPixel(i,j, 255,255,255, smoothNoise(i,j)*mHeight)
		end
	end
end


function generateTurbulentNoise()
		for i=0,width-1 do
		for j=0,height-1 do
			tNoise:setPixel(i,j, 255,255,255, turbulence(i,j,64))
			--tNoise:setPixel(i,j, turbulence(i,j,64),turbulence(i,j,64),turbulence(i,j,64), 255)
		end
	end
end


function smoothNoise(x,y)
	--get the fractional part of x and y
	fractX = x - (x%1)
	fractY = y - (y%1)

	--wrap around
	x1 = (x%1 + width)%width
	y1 = (y%1 + height)%height

	--neighbor values
	x2 = (x1 + width -1)%width
	y2 = (y1 + height -1)%height 

	--smooth noise using bilinear interpolation
	value = 0.0
	value = value + fractX * fractY * love.math.noise(x1,y1)
	value = value +(1- fractX) * fractY * love.math.noise(x2,y1)
	value = value +fractX * (1- fractY) * love.math.noise(x1,y2)
	value = value +(1- fractX) * (1- fractY) * love.math.noise(x2,y2)

	return value
end

function turbulence(i,j,size)
	value = 0
	initialSize=0

	while size>=1 do
		value = value + smoothNoise(i/size, j/size)*size
		size = size/2
	end

	return 128* value / initialSize
end