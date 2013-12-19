module HomesHelper
	def get_parent_name(id)
		Category.find(id).name rescue nil
	end
	end
