percentHandler = {}


---------------------------------------------------------
--Handles Percentages for adapting to different screens--
---------------------------------------------------------



local width, height 			= nil 							--Holds values of screen dimensions, inorder to calculate percentages


-----------------------------------------------------------------------------------------

function percentHandler.initiate()

	width, height = love.graphics.getDimensions()				--Get the dimensions of the screen

end

-----------------------------------------------------------------------------------------


function percentHandler.getW(wPercent)

	local wReturn = (wPercent/100)*width 						--calculate the amount of pixels that make up a certain percent of the screen (width)

	return wReturn
end

-----------------------------------------------------------------------------------------


function percentHandler.getH(hPercent)

	local hReturn = (hPercent/100)*height 						--calculate the amount of pixels that make up a certain percent of the screen (height)

	return hReturn

end

-----------------------------------------------------------------------------------------


function percentHandler.cW(asset, wPercent)						--calculate the scale an image needs to take up a certain percent of the screen (width)

	local cw = nil

	cw = ( wPercent*height )/100

	cw = ( cw/asset:getWidth() )


	return cw
end

-----------------------------------------------------------------------------------------


function percentHandler.cH(asset, hPercent)						--calculate the scale an image needs to take up a certain percent of the screen (height)

	local ch = nil

	ch = ( hPercent*width )/100

	ch = ( ch/asset:getHeight() )


	return ch
end

-----------------------------------------------------------------------------------------

