class Place < ApplicationRecord
	has_many :lists, :class_name => "List", :foreign_key =>'place_id'
end
