require 'ohm'
require 'json'

class Project < Ohm::Model
	attribute :name
	attribute :description

	collection :environments, Environment

	def validate
		assert_present :name
		assert_format :name, /^[\w\d]+$/
		assert_present :description
	end
end