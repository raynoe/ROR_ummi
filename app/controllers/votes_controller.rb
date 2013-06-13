class VotesController < ApplicationController

	def create
		forum = Forum.find(params[:forum_id])
		vote = forum.votes.build
		vote.save!
		redirect_to(forums_path)
	end
end
