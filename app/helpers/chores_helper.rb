module ChoresHelper
	def recent_chores
		Chores.recent
	end

	def finished_chores
		Chores.finished
	end

	def unfinished_chores
		Chores.unfinished
	end
end
