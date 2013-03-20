class House < ActiveRecord::Base
	has_many :chores
	attr_accessible :chore, :house_name, :num_housemates
	validates :house_name, :num_housemates, :presence => true
	validates :house_name, uniqueness: true 
	validates :num_housemates, numericality: { only_integer: true, greater_than: 0 }
end
