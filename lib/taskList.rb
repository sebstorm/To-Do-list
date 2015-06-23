require_relative("task.rb")

class TaskList

	attr_accessor :tasks_list

	def initialize
		@tasks_list = []
	end

	def add(task)
		@tasks_list.push(task)
	end

	def list
		return @tasks_list
	end
end