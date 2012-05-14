require './spec_helper.rb'

describe Change do
	before(:each) do
		@change = ::Change.new
	end

	after(:all) do

	end

	it "should have a path" do
		@change.path = 'path1/path2'
	end

	it "should require a path" do
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :path
		@change.errors[0][1].should == :not_present
	end

	it "should have an action" do
		@change.action = 'delete'
	end

	it "should require a action" do
		@change.path = 'path1/path2'
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :action
		@change.errors[0][1].should == :not_present
	end

	it "should have a content" do
		@change.a_content = 'text'
	end
	
	it "should require a content" do
		@change.path = 'path1/path2'
		@change.action = 'delete'
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :a_content
		@change.errors[0][1].should == :not_present
	end
	
	it "should have b content" do
		@change.b_content = 'text'
	end
	
	it "should require b content" do
		@change.path = 'path1/path2'
		@change.action = 'delete'
		@change.a_content = 'text'
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :b_content
		@change.errors[0][1].should == :not_present
	end
	
	it "should have a datetime" do
		@change.datetime = Time.new.to_s
	end
	
	it "should require a datetime" do
		@change.path = 'path1/path2'
		@change.action = 'delete'
		@change.a_content = 'text'
		@change.b_content = 'text'
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :datetime
		@change.errors[0][1].should == :not_present
	end
	
	it "should have an owner" do
		@change.owner = 'test owner'
	end
	
	it "should require a owner" do
		@change.path = 'path1/path2'
		@change.action = 'delete'
		@change.a_content = 'text'
		@change.b_content = 'text'
		@change.datetime = Time.new.to_s
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :owner
		@change.errors[0][1].should == :not_present
	end
	
	it "should refer to an organization" do
		org = Organization.create :name => 'dev', :description => 'desc', :sf_env_type => 'sandbox', :sf_username => 'test', :sf_password => 'test'
		@change.organization = org
	end
	
	it "should require a organization" do
		@change.path = 'path1/path2'
		@change.action = 'delete'
		@change.a_content = 'text'
		@change.b_content = 'text'
		@change.datetime = Time.new.to_s
		@change.owner = 'test owner'
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :organization
		@change.errors[0][1].should == :not_present
	end
	
	it "should refer to a project" do
		proj = Project.create :name => 'proj', :description => 'desc'
		proj.save
		@change.project = proj
	end
	
	it "should require a project" do
		@change.path = 'path1/path2'
		@change.action = 'delete'
		@change.a_content = 'text'
		@change.b_content = 'text'
		@change.datetime = Time.new.to_s
		@change.owner = 'test owner'
		org = Organization.create :name => 'dev', :description => 'desc', :sf_env_type => 'sandbox', :sf_username => 'test', :sf_password => 'test'
		@change.organization = org
		@change.save
		@change.valid?.should be_false
		@change.errors.size.should > 0
		@change.errors[0][0].should == :project
		@change.errors[0][1].should == :not_present
	end
end