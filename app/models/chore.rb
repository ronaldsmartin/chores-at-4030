class Chore < ActiveRecord::Base
	attr_accessible :chore, :assignedto, :chorefinished, :dateadded, :datefinished, :house
	belongs_to :house

	validates :chore, presence: { :message => "Field must be nonempty"}
	validates :assignedto, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
	validates_date :datefinished, :on_or_after => :dateadded

	scope :finished, where(chorefinished: true)
	scope :unfinished, where(chorefinished: false)
	scope :recent, lambda { where('created_at >= ?', 14.days.ago) }
end
