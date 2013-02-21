class Chore < ActiveRecord::Base
	attr_accessible :chore, :assignedto, :chorefinished, :dateadded, :datefinished

	validates :chore, presence: { :message => "Field must be nonempty"}
	validates :assignedto, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
	validates_date :datefinished, :on_or_after => :dateadded
end
