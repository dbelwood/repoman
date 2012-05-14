require './spec_helper.rb'

describe Organization do
	before(:each) do
		@org = Organization.new
	end

	it 'should have a name' do
		@org.name = 'tst'
	end

	it 'should require a name' do
		@org.save
		@org.valid?.should be_false
		@org.errors.size.should > 0
		@org.errors[0][0].should == :name
		@org.errors[0][1].should == :not_present
	end
	
	it 'should have a git-compliant name' do
		@org.name = 'tst-wrong'
		@org.save
		@org.valid?.should be_false
		@org.errors.size.should > 0
		@org.errors[0][0].should == :name
		@org.errors[0][1].should == :format
		@org.name = 'tstcorrect'
		@org.description = 'test environment.'
		@org.sf_env_type = 'sandbox'
		@org.sf_username = 'user_name'
		@org.sf_password = 'password'
		@org.save
		@org.valid?.should be_true
	end

	it 'should have a description' do
		@org.name = 'tst'
		@org.description = 'Test environment'
	end

	it 'should require a description' do
		@org.name = 'tst'
		@org.save
		@org.valid?.should be_false
		@org.errors.size.should > 0
		@org.errors[0][0].should == :description
		@org.errors[0][1].should == :not_present
	end

	it 'should have a sf_env_type' do
		@org.sf_env_type = 'sandbox'
	end
	it 'should require a sf_env_type' do
		@org.name = 'tst'
		@org.description = 'descr'
		@org.save
		@org.valid?.should be_false
		@org.errors.size.should > 0
		@org.errors[0][0].should == :sf_env_type
		@org.errors[0][1].should == :not_present
	end

	it 'should only allow specific values for sf_env_type - [sandbox, production, prerel]' do
		@org.name = 'tst'
		@org.description = 'descr'
		@org.sf_env_type = 'sandboxwrong'
		@org.save
		@org.valid?.should be_false
		@org.errors.size.should > 0
		@org.errors[0][0].should == :sf_env_type
		@org.errors[0][1].should == :not_member
		@org.sf_env_type = 'sandbox'
		@org.sf_username = 'user_name'
		@org.sf_password = 'password'
		@org.save
		@org.valid?.should be_true
	end

	it 'should have a sf_username' do
		@org.sf_username = 'user_name'
	end
	it 'should require a sf_username' do
		@org.name = 'tst'
		@org.description = 'descr'
		@org.sf_env_type = 'sandbox'
		@org.save
		@org.valid?.should be_false
		@org.errors.size.should > 0
		@org.errors[0][0].should == :sf_username
		@org.errors[0][1].should == :not_present
	end
	it 'should have a sf_password' do
		@org.sf_password = 'password'
	end
	it 'should require a sf_password' do
		@org.name = 'tst'
		@org.description = 'descr'
		@org.sf_env_type = 'sandbox'
		@org.sf_username = 'user_name'
		@org.save
		@org.valid?.should be_false
		@org.errors.size.should > 0
		@org.errors[0][0].should == :sf_password
		@org.errors[0][1].should == :not_present
	end

	it 'should have a sf_sec_token' do
		@org.sf_env_type = 'sandbox'
	end
end