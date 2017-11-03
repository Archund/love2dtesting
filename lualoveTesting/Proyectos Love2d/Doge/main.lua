





























	
		loops.play(1)
		startField = true 
		timer.delTimer("Buildup")
	--actions--
	--colors--
	--resources--
	--variables--
	appstates[state].draw()
	appstates[state].update(dt)
	BBAR				= {004, 004, 002}
	BLUE 				= {059, 078, 128}
	buildup 			= love.audio.newSource("resources/buildup.ogg")
	buildup:play()
	doge 				= love.graphics.newImage("resources/doge.png")
	DOGE 				= {205, 185, 135}
	end
	FULL 				= {255, 255, 255}
	glasses				= love.graphics.newImage("resources/glasses.png")
	GREN 				= {000, 157, 086}
	highlight			= love.graphics.newImage("resources/highlight.png")
	if timer.getTime("Buildup") >= 23 then
	largeFont 			= love.graphics.setNewFont(22)
	LBLU				= {135, 154, 205}
	LIGH 				= {255, 237, 193}
	loop1				= love.audio.newSource("resources/loop1.ogg")
	loop1:setLooping(true)
	loop2				= love.audio.newSource("resources/loop2.mp3")
	loop2:setLooping(true)
	love.graphics.setBackgroundColor(BLUE)
	love.graphics.setColor(FULL)
	medFont				= love.graphics.setNewFont(15)
	RRED 				= {157, 031, 019}
	startField			= false
	state = DOGEFIELD
	steam 				= love.graphics.newImage("resources/steam.png")
	taskbar.draw()
	taskbar.update(dt)
	timer.newTimer("Buildup")
	timer.update(dt)
	video 				= love.graphics.newVideo( "resources/rick.ogv", true )
	windows 			= love.graphics.newImage("resources/windows.png")
	wrapLimit			= 200
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
appstates 				= { [0]=dogeField, [1]=rickroll, [2]=other}
dF 						= dogeField
DOGEFIELD 				= 0
end
end
end
function love.draw() 
function love.load()
function love.update(dt)
mH						= multiHandler
require "dogeField"
require "giant"
require "loops"
require "multiHandler"
require "rickroll"
require "taskbar"
require "timer"
RICKROLL				= 1
state 					= nil