require './lib/fizzbuzz.rb'

describe "FizzbuzzExtreme" do
	it "should take an argument that determines it's range" do
		expect(fizzbuzz(2)).to eq ['Fizzbuzz',1,2]
	end

	it "should take a second argument, multiples of which are output as 'Fizz'" do
		expect(fizzbuzz(3,3)).to eq ['Fizzbuzz',1,2,'Fizz']
	end

	it "should take a third argument, multiples of which are output as 'Buzz'" do
		expect(fizzbuzz(6,3,5)).to eq ['Fizzbuzz',1,2,'Fizz',4,'Buzz','Fizz']
	end

	it "should output multiples of Fizz and Buzz as 'Fizzbuzz" do
		expect(fizzbuzz(15,3,5).select{|n| n=='Fizzbuzz'}.count).to eq 2
	end
end	