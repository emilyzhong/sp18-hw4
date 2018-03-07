class ThingsController < ApplicationController
	def index
		@cats = Cat.all
		@users = User.all
		@todos = Todo.all
	end

	def create
		task = params[:task_name]
		finished = params[:finished]
		Todo.create(task:task, finished:finished)
		redirect_to action: "index"
	end
end
