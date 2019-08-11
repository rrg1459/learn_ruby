class Timer
	# https://idiosyncratic-ruby.com/49-what-the-format.html
	# https://code-examples.net/es/q/3fb775

	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def seconds=(_seconds)
		@seconds = _seconds
	end

	# solution 1
	def time_string
		Time.at(@seconds).utc.strftime('%H:%M:%S')
	end

	# solution 2
	# def time_string
	# 	"%02d:%02d:%02d" % [@seconds/3600%24, @seconds/60%60, @seconds%60]
	# end

	# solution 3
	# def time_string
	# 	hours   = @seconds / 3600 % 24
	# 	minutes = @seconds /   60 % 60
	# 	seconds = @seconds        % 60
	# 	"%02d:%02d:%02d" % [hours, minutes, seconds]
	# end

	# solution 4
	# def time_string
	# 	hours   = @seconds / 3600 % 24
	# 	minutes = @seconds /   60 % 60
	# 	seconds = @seconds        % 60
	# 	"#{"%02d"%hours}:#{"%02d"%minutes}:#{"%02d"%seconds}"
	# end

	# solution 5
	# def padded num
	# 	if num.to_s.length == 1
	# 		num = '0' + num.to_s
	# 	elsif
	# 		num = num.to_s
	# 	end
	# 	num
	# end
	# def time_string
	# 	hours   = @seconds / 3600 % 24
	# 	minutes = @seconds /   60 % 60
	# 	seconds = @seconds        % 60
	# 	"#{self.padded(hours)}:#{self.padded(minutes)}:#{self.padded(seconds)}"
	# end

end
