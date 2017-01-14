class Job < ApplicationRecord
	validates :title, presence: true
	validates :company, presence: true
	validates :pay, presence: true
	validates :location, presence: true
	validates :description, presence: true
end
