class List < ApplicationRecord
	belongs_to :places

	def Place.search(search)
		# return "Hello" if @places.name == "Beach"
      find = List.find(:all, :conditions => ['name LIKE ?', "%#{search}%"])

	end

	if Place.pluck(:id) == "Beach"
		puts "Hello"
	end



end
