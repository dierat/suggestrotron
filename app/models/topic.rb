class Topic < ActiveRecord::Base
	has_many :votes, dependent: :destroy

	def score
		final_score = 0

		self.votes.each do |vote|
			final_score += vote.value
		end

		return final_score

	end
end
