class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def share
    	@task = TasksUsers.new
	    	@task.task_id = params[:task_id]
	    	@task.user_id = params[:user_id]
    	@task.save
    	redirect_to :back
  	end
end