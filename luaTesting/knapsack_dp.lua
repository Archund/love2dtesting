function Knapsack_dp(w, v, nItems, capacity)

    m = nItems+1
    n = capacity+1

    mtable = {}
    for i=1, m do
    	for j=1, n do
        	table.insert(table,{0})
        end

    end

    for i=1,m do
        for j=1,n do
            if(w[i] > j) then
                mtable[i+1][j] = mtable[i][j]
            else
                mtable[i][j] = max(mtable[i-1][j], v[i-1] + mtable[i-1][j-w[i-1]])
            end
        end
    end

    return mtable
end




-----------------------------------------------------------------------------------------

w = {3, 2, 1}
v = {5, 3, 4}
print('w =', w)
print('v = ', v)


mtable = Knapsack_dp(w, v, #w, 5)
print_table(mtable)