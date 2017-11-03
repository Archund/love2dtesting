local tick = require("tick")

function love.load() 
	tick.framerate = 12

	love.graphics.setDefaultFilter("nearest")

	ALIVE = {255,255,255,255}
	DEAD = {0,0,0,255}


	W = 64
	H = 64
	table = love.image.newImageData(W,H)
	for i=1,W-1 do
		for j=1,H-1 do
			number = love.math.random(0,10)
			if number < 4 then
				table:setPixel(i,j,ALIVE)
			else
				table:setPixel(i,j,DEAD)
			end
		end
	end



	tableNext = love.image.newImageData(W,H)

end


function love.update(dt) 


	image = love.graphics.newImage(table)


	for i=1,W-1 do
		for j=1,H-1 do
			vecinos = 0

			--vecinos = check(i,j)

			if vecinos > 3 or vecinos <2 then
				tableNext:setPixel(i,j,DEAD)
			else
				tableNext:setPixel(i,j,ALIVE)
			end


		end
	end

end


function love.draw()

	love.graphics.draw(image, 10, 10, 0, 8, 8)

end


--[[
function check(i,j) 
	if i>1 and i<W then
		if j>1 and j<H then

	print(north(i,j))



end

local function north(i,j)     
	if table:getPixel(i,j-1) == ALIVE then
		return true
	else
		return false
	end






local function south(i,j)     return 	{cell[1]+1, cell[2]} end
local function west(i,j)      return 	{cell[1],   cell[2]-1} end
local function east(i,j)      return 	{cell[1],   cell[2]+1} end
local function northeast(i,j) return 	{cell[1]-1, cell[2]+1} end
local function northwest(i,j) return 	{cell[1]-1, cell[2]-1} end
local function southeast(i,j) return 	{cell[1]+1, cell[2]+1} end
local function southwest(i,j) return 	{cell[1]+1, cell[2]-1} end--]]