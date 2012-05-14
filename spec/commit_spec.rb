require './spec_helper.rb'

describe Commit do
	before(:each) do
		@commit = Commit.new
	end

	it "should have a datetime" do
		@commit.should respond_to(:datetime)
	end
	it "should contain changes" do
		@commit.should respond_to(:changes)
	end

	it "should refer to an organization" do
		@commit.should respond_to(:organization)
	end

	it "should refer to a project" do
		@commit.should respond_to(:project)
	end
end