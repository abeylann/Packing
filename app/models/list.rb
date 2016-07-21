class List < ApplicationRecord
	belongs_to :place
	has_and_belongs_to_many :user
end
