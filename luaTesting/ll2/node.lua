function Node(init)
  
  --new instance of object
 	local self = {}--global variables go here

 	--private variables
	local data = init
	local prev = nil
	local next = nil
-----------------------------------------------------------------------------------------
	-- getters
	function self.getNext()
		return next
	end

	function self.getPrev()
		return prev
	end

	function self.getData()
		return data
	end
-----------------------------------------------------------------------------------------
	-- setters
	function self.setNext(v)
		next = v
	end

	function self.setPrev(v)
		prev = v
	end

	function self.setData(v)
		data = v
	end

	function self.delete()
		next = nil
		prev = nil
	end

  -- return the instance
  return self
end

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
--nodes are declared as a closure, the node creation function creates tables with certain attributes and functions that affect the table
-- with self they can also access shared global variables that are the same for all instances
-- http://lua-users.org/wiki/ObjectOrientationTutorial