require './spec_helper.rb'

describe Release do
	before(:each) do
		@rel = Release.new
	end

	it "should have a name" do
		@rel.should respond_to(:name)
		@rel.should respond_to(:name=)
	end

	it "should require a name"
	it "should have a release date" do
		@rel.should respond_to(:release_date)
		@rel.should respond_to(:release_date=)
	end

	it "should have a status" do
		@rel.should respond_to(:status)
		@rel.should respond_to(:status=)
	end

	it "should contain changes"

	it "should refer to a source organization" do
		@rel.should respond_to(:source_org)
		@rel.should respond_to(:source_org=)
	end

	it "should refer to a project" do
		@rel.should respond_to(:project)
		@rel.should respond_to(:project=)
	end
end