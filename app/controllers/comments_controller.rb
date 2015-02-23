class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		@comment.author_id = current_user.id
		if @comment.valid?
			@comment.save
			redirect_to :back
		else
			redirect_to :back
		end
	end

	private

	def comment_params
	  params.require(:comment).permit(:text, :task_id)
	end

end