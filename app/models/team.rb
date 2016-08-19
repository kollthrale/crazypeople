class Team < ApplicationRecord
	has_many :athletes, dependent: :destroy

	def self.colors
		%w(Red Blue Green Yellow Black White Purple)
	end
end
