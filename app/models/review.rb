class Review < ApplicationRecord
	belongs_to :movie
	belongs_to :user

	validates :comments, presence: true
end
