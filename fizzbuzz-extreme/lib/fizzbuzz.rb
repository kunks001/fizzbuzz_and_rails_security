def fizzbuzz(num,f=10)
	(0..num).to_a.map{|n| n%f==0? 'Fizz' : n}
end