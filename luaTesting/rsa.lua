require('primes')
require('xgcd')

math.randomseed(os.time())

mynum = 20
limit = mynum*100

--generate 2 large primes
generate_primes(limit)

p = primes[math.random(mynum*2,mynum*8)]
q = primes[math.random(mynum*2,mynum*8)]

print("p =".. tostring(p) .."    q ="..tostring(q))

n = p* q
print("n =".. tostring(n))

tn = (p-1)*(q-1)
print("tn =".. tostring(tn))

e=mynum


while( gcd(e,tn) ~= 1 )do
 	e = e+1
end
print("e =".. tostring(e)..tostring(gcd(e,tn)==1))

publicKey= {e,n}
--d -> d*e congruent with 1 mod tn
privateKey= {d,n}

--encrypt ->y = x^e mod n
--decrypt -> y^d mod