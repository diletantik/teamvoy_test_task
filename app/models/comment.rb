class Comment < ActiveRecord::Base
	belongs_to :task
	belongs_to :user, :foreign_key => "author_id"
end
