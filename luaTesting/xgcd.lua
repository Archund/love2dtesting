function gcd(a, b)
    while a ~= b do
        if a > b then
        	a = a-b
        else
        	b = b-a
        end
    end
    return a
end

function xgcd(a, b)
	x=0
    y=1
    lastx=1
    lasty=0
    while (b~=0) do
        q= a/b
        temp1= a%b
        a=b
        b=temp1

        temp2 = x
    	x=lastx-q*x
    	lastx = temp2

    	temp3 = y
    	y = lasty-q*y
    	lasty=temp3
    end

    return a, lastx, lasty

end



function inverse(a, n)
    g, x, y = xgcd(a, n)

    return x
end