require './lib/fizzbuzz.rb'

describe "FizzbuzzExtreme" do
	it "should take an argument that determines it's range" do
		expect(fizzbuzz(100)).to eq (0..100)
	end
end