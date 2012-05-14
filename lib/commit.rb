require 'ohm'

class Commit < Ohm::Model
	attribute :datetime

	collection :changes, Change

	reference :organization, Organization
	reference :project, Project
end