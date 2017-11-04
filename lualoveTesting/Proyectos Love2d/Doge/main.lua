require "dogeField"
require "giant"
require "timer"
require "multiHandler"
require "loops"
require "taskbar"
require "rickroll"

dF 						= dogeField
mH						= multiHandler

state 					= nil

DOGEFIELD 				= 0
RICKROLL				= 1

appstates 				= { [0]=dogeField, [1]=rickroll, [2]=other}

-----------------------------------------------------------------------------------------

function love.load()

	--resources--
	doge 				= love.graphics.newImage("resources/doge.png")
	highlight			= love.graphics.newImage("resources/highlight.png")
	glasses				= love.graphics.newImage("resources/glasses.png")
	steam 				= love.graphics.newImage("resources/steam.png")
	windows 			= love.graphics.newImage("resources/windows.png")

	buildup 			= love.audio.newSource("resources/buildup.ogg")
	loop1				= love.audio.newSource("resources/loop1.ogg")
	loop2				= love.audio.newSource("resources/loop2.mp3")

	video 				= love.graphics.newVideo( "resources/rick.ogv", true )

	largeFont 			= love.graphics.setNewFont(22)
	medFont				= love.graphics.setNewFont(15)

	wrapLimit			= 200

	--colors--
	FULL 				= {255, 255, 255}
	BLUE 				= {059, 078, 128}
	DOGE 				= {205, 185, 135}
	LIGH 				= {255, 237, 193}
	LBLU				= {135, 154, 205}
	BBAR				= {004, 004, 002}
	RRED 				= {157, 031, 019}
	GREN 				= {000, 157, 086}

	--variables--
	startField			= false


	--actions--
	loop1:setLooping(true)
	loop2:setLooping(true)
	buildup:play()
	timer.newTimer("Buildup")
	state = DOGEFIELD

end

-----------------------------------------------------------------------------------------

function love.update(dt)

	timer.update(dt)
	appstates[state].update(dt)
	taskbar.update(dt)

	if timer.getTime("Buildup") >= 23 then
		startField = true 
		timer.delTimer("Buildup")
		loops.play(1)
	end

end

-----------------------------------------------------------------------------------------

function love.draw() 

	love.graphics.setColor(FULL)
	love.graphics.setBackgroundColor(BLUE)

	appstates[state].draw()
	taskbar.draw()

end

-----------------------------------------------------------------------------------------