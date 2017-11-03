jest = {}

--starting position
jest.sX = nil
jest.sY = nil
--previous position
jest.pX = nil
jest.pY = nil
--current position
jest.cX = nil
jest.cY = nil
--ending position
jest.eX = nil
jest.eY = nil

jest.gesturing = false

jest.direction = nil

--pixel amount of x or y deviation needed for a turn to be counted
jest.turnThreshold = 20

--first three values of gesture used to determine direction
jest.f3 = {one = nil, two = nil, three = nil}

-- checks turns, amount, and a table of directions
jest.turn = {check = false, amount = nil, directions = {nil}}


jest.debug = nil


function jest.touch(x,y,button,touch)

	--set first three position coordinates to x and y
	sX,cX,pX = x
	sY,cY,pY = y

	jest.f3.one = {x=x,y=y}

	--gesturing is not in progress
	gesturing = true

end


function jest.update(dt)

	if jest.f3.one ~= nil then
		if jest.f3.two == nil then
			jest.f3.two = {x= love.mouse.getX(),y=love.mouse.getY()}
		elseif jest.f3.three == nil then
			jest.f3.three = {x=love.mouse.getX(),y=love.mouse.getY()}
		end
	end

	if jest.f3.three ~= nil then
		jest.slope(jest.f3.one,jest.f3.three)
	end

end



function jest.release(x,y,button,touch)

	--set last two position coordinates to x and y
	cX,eX = x
	cY,eY = y

	--gesturing is in progress
	gesturing = false

	jest.analyze() --evaluate gesture and run corresponding function
	jest.f3 = {one = nil, two = nil, three = nil}

end


-- point format {x,y}
function jest.slope(pntA,pntB)

	s = (pntB.y-pntA.y)/(pntB.x-pntA.x)

	jest.debug = s
	return s
end



function jest.analyze()

end