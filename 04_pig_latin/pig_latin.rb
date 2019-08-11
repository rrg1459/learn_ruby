def translate str
	vowels =  [ 'a', 'e', 'i', 'o', 'u']
	old_arr = str.split(' ')
	new_arr = []
	old_arr.length.times do |i|
		letter = ''
		if vowels.include?(old_arr[i][0])
			nil
		elsif vowels.include?(old_arr[i][1]) # second vowel?
			old_arr[i][0..1] == 'qu' ? letter = 'qu'                 : letter = old_arr[i][0]
		elsif vowels.include?(old_arr[i][2]) # third vowel?
			old_arr[i][1..2] == 'qu' ? letter = "#{old_arr[i][0]}qu" : letter = old_arr[i][0..1]
		elsif vowels.include?(old_arr[i][3]) # fourth vowel?
			letter = old_arr[i][0..2]
		end
		new_arr.push(old_arr[i].delete_prefix(letter) + letter + 'ay')
	end
	new_arr.join(' ')
end