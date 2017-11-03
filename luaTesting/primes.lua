primes = {}
primecheck = true

--printfeed = ""

function isDivisible(x,y)
	-- x = qy+r
	if x % y == 0 then
		return true
	else
		return false
	end
end


function generate_primes(n)
	for i=2,n do
		primecheck = true

		for j, p in ipairs(primes) do
			if isDivisible(i,p) then
				primecheck = false
			end
		end

		if primecheck == true then
			table.insert(primes,i)
		end

	end
end

-- print("For ",n," numbers,the primes are :\n")
-- for i, n in ipairs(primes) do
-- 	printfeed = printfeed.."\t"..n
-- end

-- print(printfeed)
