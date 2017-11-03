require("startup")
require("overlays")
require("menu")
require("manager")

state = nil

STARTUP, MENU, OTHER = 0,1,2

menustates = { [0]=startup, [1]=menu, [2]=other}

-----------------------------------------------------------------------------------------




function love.load()

faceA 				= love.graphics.newImage("resources/A.jpg")
faceB 				= love.graphics.newImage("resources/B.jpg")


startup.start()
end




-----------------------------------------------------------------------------------------

function love.update(dt)

menustates[state].update(dt)
overlays.update(dt)
end



-----------------------------------------------------------------------------------------

function love.draw(dt)

menustates[state].draw(dt)
overlays.draw(dt)
end

-----------------------------------------------------------------------------------------