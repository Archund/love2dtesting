Node = {}
--node components
local self = {}
local data 						= nil
local next 						= nil
local prev 						= nil



-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-- getters
function Node.getNext()
	return next
end

function Node.getPrev()
	return prev
end

function Node.getData()
	return data
end

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-- setters
function Node.setNext(v)
	next = v
end

function Node.setPrev(v)
	prev = v
end

function Node.setData(v)
	data = v
end


--create new node and return anchor(to use as pointer reference) 
function Node:new(val) 
	nod = {}
	setmetatable(nod,self)
	self.__index = self
	data = value
	prev = prev
	next = next
	return nod --creating a variable equal to a table is the same as creating a pointer to a table
end