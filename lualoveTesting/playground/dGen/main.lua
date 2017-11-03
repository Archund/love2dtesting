function love.load()
	size 						= 64
	rooms						= 8

	genFlag						= false
end


function love.update(dt)

	if genFlag == false then
		genDungeon()
	end 


end


function love.draw()

end