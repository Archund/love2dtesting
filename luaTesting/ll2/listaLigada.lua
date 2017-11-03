require("node")

-- table based class
ListaLigada 					= {}


ListaLigada.head 				= nil

-- function inserts a new value as a node to the list
function ListaLigada:insert(value)

	local new = Node(value) -- create new node

	-- check if the head has been created, else set the new value as the head
	if self.head == nil then
		self.head = new
		self.head.setNext(nil)
		self.head.setPrev(nil)

	else	
		-- search for the position where the new node belongs
		-- sorted large to small
		local anchor = self.head

		--if 

		while anchor ~= nil do

			if value <= anchor.getData() then 

				--set new node's links
				new.setNext(anchor)
				new.setPrev(anchor.getPrev())

				--changle previous nodes' forward link, and the current nodes prev link
				if anchor.getPrev() ~= nil then
					anchor.getPrev().setNext(new)
				else -- if smaller than head, replace the head
					self.head = new
				end
				anchor.setPrev(new)

				return
			elseif anchor.getNext() ~= nil then
				anchor = anchor.getNext() -- anvance the anchor if the next spot isnt empty
			else -- if the next spot is empty, insert new node there
				anchor.setNext(new)
				new.setPrev(anchor)
				return
			end
		end--end while
	end--end outer else
end-- end function



--
function ListaLigada:remove(value)

	-- create counters and anchor
	local i = self:search(value)
	local j = 1

	local anchor = self.head

	--Mmove to the position of the term
	while j<i do
		anchor = anchor.getNext()
		j=j+1
	end

	-- check if previous and next nodes exist, and replace their links
	if anchor.getPrev() ~= nil then
		tmp = anchor.getPrev()
		tmp.setNext(anchor.getNext())
	end
	if anchor.getNext() ~= nil then
		tmp = anchor.getNext()
		tmp.setPrev(anchor.getPrev())
	end
	-- delete the anchor
	anchor.delete()
	anchor = nil
	collectgarbage()



end




--
function ListaLigada:search(term)

	-- check if the list is initialized
	if self.head == nil then
		print("nothing to search")
		return
	end

	-- create anchor and a counter
	local anchor = self.head
	local int i = 1

	
	--loop through list
	while anchor ~= nil do

		if anchor.getData() == term then

			print("found at "..i)
			return i -- return index of term

		elseif anchor.getNext() ~= nil then
			anchor = anchor.getNext()
			i=i+1
		else -- anchor.getnext is equal to nil
			print("term not found")
		end

	end
end -- end function



--
function ListaLigada:display()
	local anchor = self.head
	local i = 1

	while anchor ~= nil do
		print("I ="..i)
		print("Data ="..tostring(anchor.getData()))
		print("")
		i=i+1
		anchor = anchor.getNext()
	end
end





--because lua has no class types, we make an 'object' that will be used as a prototype for all future objects
--setmetatable( a, {_index = b} )
-- this causes a to look in b for any operation it does not have

--create a new instance of the object
function ListaLigada:new(obj) -- using : instead of . implicitly gives the function an identity of 'self'
	obj = obj or {} -- in the case of not providing an object, create a new one
	setmetatable(obj,self)
	self.__index = self
	return obj
end
-- upon calling l = listaLigada:new{'data'} it will create a new object
-- _index is called when an index lookup is failed. i.e. LL.nonFunction gets LL.__index
-- https://www.lua.org/pil/16.1.html








