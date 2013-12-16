require './lib/hello-world.rb'

describe "HelloWorld" do
  it 'should output hello world and a newline character to the console' do
    expect($stdout).to receive(:puts).with('Hello world')
    hello_world
  end
end