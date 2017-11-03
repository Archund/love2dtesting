menu = {}

local flag1 = false
local var1 = 0

function menu.start()										--function called to switch into update mode

	state = MENU										--set state to menu, to run menu.update and .draw
	
	--love.graphics.setBackgroundColor(250, 100, 130, 255)


end



function menu.update(dt)

	if flag1== false then 
		var1 = love.window.showMessageBox("Title", "Message", {"Button", "List"}, "info", false)
		flag1 = true
		overlays.set(false, true, 1)
	end


end



function menu.draw(dt)


end