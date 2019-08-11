def echo echo
	echo
end

def shout str
	str.upcase
end

def repeat str,n=2
	string = []
	n.times { string.push(str) }
	string.join(' ')
end

def start_of_word str, n
	str[0..n-1]
end

def first_word str
	str = str.split(' ')
	str[0]
end

def titleize(str)
	out = ["and", "over", "the"]
	str = str.split(' ')
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