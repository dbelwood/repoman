require './spec_helper.rb'

describe Project do
	before(:each) do
		@project = Project.new
	end

	it 'should have a name' do
		@project.name = 'tst'
	end

	it 'should require a name' do
		@project.save
		@project.valid?.should be_false
		@project.errors.size.should > 0
		@project.errors[0][0].should == :name
		@project.errors[0][1].should == :not_present
	end

	it 'should have a git-compliant name' do
		@project.name = 'tst-wrong'
		@project.save
		@project.valid?.should be_false
		@project.errors.size.should > 0
		@project.errors[0][0].should == :name
		@project.errors[0][1].should == :format
		@project.name = 'tstcorrect'
		@project.description = 'test environment.'
		@project.save
		@project.valid?.should be_true
	end

	it 'should have a description' do
		@project.name = 'tst'
		@project.description = 'Test environment'
	end

	it 'should require a description' do
		@project.name = 'tst'
		@project.save
		@project.valid?.should be_false
		@project.errors.size.should > 0
		@project.errors[0][0].should == :description
		@project.errors[0][1].should == :not_present
	end
end