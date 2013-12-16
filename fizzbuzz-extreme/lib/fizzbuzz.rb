public

def fizzbuzz(num,f=3, b=5)
	a = (0..num).to_a.map do |n| 
		if n%f==0
			n%b==0 ?  'Fizzbuzz' : 'Fizz'
		else
			n%b==0 ? 'Buzz' : n
		end
	end
	puts a
end