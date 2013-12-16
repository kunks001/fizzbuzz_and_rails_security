def fizzbuzz(num,f=3, b=5)
	(1..num).to_a.map do |n| 
		if n%f==0
			'Fizz'
		elsif n%b==0
			'Buzz'
		else
			n
		end
	end
end