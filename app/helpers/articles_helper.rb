module ArticlesHelper

	def status_color blog
		return 'bg-yellow-200' if blog.draft?
		return 'bg-green-200' if blog.published?
		'bg-gray-200'
	end
end
