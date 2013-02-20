class Chore < ActiveRecord::Base
	attr_accessible :chore, :assignedto, :chorefinished, :dateadded, :datefinished

	validates :chore, :assignedto, presence: true
	validates :assignedto, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
end
