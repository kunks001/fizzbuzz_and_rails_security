require './spec/hello-world.rb'

describe "HelloWorld" do
	it 'should output hello world and a newline character to the console'
		expect($stdout).to receive(:puts).with('Hello world')
	end
end