require("sinatra")
require("sinatra/reloader") if development?
require_relative("lib/taskList.rb")
require_relative("lib/task.rb")

tasks_list = TaskList.new 

get "/newTask" do 
	erb(:newTask)	
end

post "/list" do
	@content = params[:content]
	task = Task.new(@content)
	
	tasks_list.add(task)
	
	@post = tasks_list.list

	erb(:list)
	end

