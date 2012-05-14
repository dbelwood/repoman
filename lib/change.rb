require 'ohm'
require 'json'

class Change < Ohm::Model
	attribute :path
	attribute :action
	attribute :a_content
	attribute :b_content
	attribute :datetime
	attribute :owner

	reference :organization, Organization
	reference :project, Project

	def validate
		assert_present :path
		assert_present :action
		assert_present :a_content
		assert_present :b_content
		assert_present :datetime
		assert_present :owner
		assert_present :organization
		assert_present :project
	end
end