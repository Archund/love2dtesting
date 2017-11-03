function fib(n)
	temp = 0
	if n>2 then
		temp = fib(n-1)+fib(n-2)
		print(temp)
		return temp
	elseif n > 0 then 
		return 1
	else
		print("insert a number greater than 1")
		return 0
	end
end



valores = {}

function AF(n)
	temp = 0
	if n>2 then
		if valores[n] == nil then
			temp = AF(n-1)+AF(n-2)
			valores[n] = temp
			print(temp)
			return temp
		else
			return valores[n]
		end
	elseif n > 0 then 
		return 1
	else
		print("insert a number greater than 1")
		return 0
	end

end

print(AF(12))

print("-----------------------------------------------------------------------------------------")
print(fib(12))