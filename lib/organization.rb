require 'ohm'
require 'ohm/contrib'
require 'json'

class Organization < Ohm::Model
	include Ohm::ExtraValidations
	
	attribute :name
	attribute :description
	attribute :sf_env_type
	attribute :sf_username
	attribute :sf_password
	attribute :sf_sec_token

	reference :repo, Repo

	def validate
		assert_present :name
		assert_format :name, /^[\w\d]+$/
		assert_present :description
		assert_present :sf_env_type
		assert_member :sf_env_type, ['sandbox', 'production', 'prerel']
		assert_present :sf_username
		assert_present :sf_password
	end
end