def fizzbuzz(num,f=3, b=5)
	(0..num).to_a.map do |n| 
		if n%f==0
			n%b==0 ? 'Fizzbuzz' : 'Fizz'
		elsif n%b==0
			'Buzz'
		else
			n
		end
	end
end