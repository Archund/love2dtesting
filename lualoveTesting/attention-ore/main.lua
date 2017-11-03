require("startup")
require("ore")
require("touchHandler")
require("percentHandler")
require("printer")

local push = require "push"

state 							= nil 							--state of program, used to call 'state'.draw and .update

rot								= math.rad(-90) 				--rotation , to print everything sideways

STARTUP, ORE, OTHER 			= 0,1,2							--state values, used as an index for the menustates array

menustates 						= { [0]=startup, [1]=ore, [2]=other}



pH 								= percentHandler				--shortcut for writing percentHandler



----------														--color defaults
colorDBLUE						= {13, 58, 127}
colorLBLUE						= {102, 162, 255}
colorBBLUE						= {26, 116, 255}

local gameWidth, gameHeight = 1920, 1080 --fixed game resolution
local windowWidth, windowHeight = love.window.getDesktopDimensions()
windowWidth, windowHeight = windowWidth*.7, windowHeight*.7 --make the window a bit smaller than the screen itself

push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = false})

-----------------------------------------------------------------------------------------



function love.load()											--load resources and enter startup

rock 							= love.graphics.newImage("resources/AOre - inv2.png")
logo 							= love.graphics.newImage("resources/bars3.png")

beep							= love.audio.newSource("resources/Message.ogg", "static")
beep:setLooping(true)

title_font 						= love.graphics.newFont("resources/BM_Space.TTF",55)
text_font 						= love.graphics.newFont("resources/BM_Space.TTF",28)

percentHandler.initiate()
startup.start()
end




-----------------------------------------------------------------------------------------

function love.update(dt)										--runs the .update(dt) of the current state and the printer

menustates[state].update(dt)
printer.update(dt)
end



-----------------------------------------------------------------------------------------

function love.draw(dt)											--runs the .draw(dt) of the current state and the printer
push:start()
menustates[state].draw(dt)
printer.draw()
push:finish()
end

-----------------------------------------------------------------------------------------