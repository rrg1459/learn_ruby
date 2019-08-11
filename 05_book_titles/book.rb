class Book

	# solution 1
	def title=(_title)
		@title = _title
	end

	def title
		out = ["and", "in", "the","of", "a", "an"]
		str = @title.split(' ')
		string = []
		str.length.times do |i|
			if out.include?(str[i]) && i > 0
				string.push(str[i])
			else
				string.push(str[i].capitalize)
			end
		end
		string.join(' ')
	end

	# solution 2
	# attr_accessor :title

	# def title
	# 		words = @title.split.map.with_index { |word, index|
	# 				if (["and", "in", "the","of", "a", "an"].include? word) && (index > 0)
	# 						word
	# 				else
	# 						word.capitalize
	# 				end
	# }
	# @title = words.join(" ")
	# end

end