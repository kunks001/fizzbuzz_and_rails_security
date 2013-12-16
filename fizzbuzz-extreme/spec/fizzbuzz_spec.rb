require './lib/fizzbuzz.rb'

describe "FizzbuzzExtreme" do
	it "should take an argument that determines it's range" do
		expect(fizzbuzz(5)).to eq ['Fizz',1,2,3,4,5]
	end

	it "should take a second argument, multiples of which are output as 'Fizz'" do
		expect(fizzbuzz(6,3)).to eq ['Fizz',1,2,'Fizz',4,5,'Fizz']
	end
end