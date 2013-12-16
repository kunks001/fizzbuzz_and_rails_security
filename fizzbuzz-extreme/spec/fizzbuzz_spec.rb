require './lib/fizzbuzz.rb'

describe "FizzbuzzExtreme" do

	it "should take an argument that determines it's range" do
		expect($stdout).to receive(:puts).with ["Fizzbuzz", 1, 2]
		fizzbuzz(2)
	end

	it "should take a second argument, multiples of which are output as 'Fizz'" do
		expect($stdout).to receive(:puts).with ['Fizzbuzz',1,2,'Fizz']
		fizzbuzz(3,3)
	end

	it "should take a third argument, multiples of which are output as 'Buzz'" do
		expect($stdout).to receive(:puts).with ['Fizzbuzz',1,2,'Fizz',4,'Buzz','Fizz']
		fizzbuzz(6,3,5)
	end

	it "should output multiples of Fizz and Buzz as 'Fizzbuzz" do
		expect($stdout).to receive(:puts).with ['Fizzbuzz',1,2,'Fizz',
																						4,'Buzz','Fizz',7,8,'Fizz',
																						'Buzz',11,'Fizz',13,14,'Fizzbuzz']
		fizzbuzz(15,3,5)
	end
end	