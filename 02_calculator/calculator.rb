def add a,b
	a + b
end

def subtract a,b
	a - b
end

def sum a
	a.sum
end

def multiply *nums
	num = 1
	nums.each {|n| num *= n }
	num
end

def power a,b
	a ** b
end

# solution 1
def factorial num
	(num <= 1) ? 1 : num * factorial(num - 1)
end

# solution 2
# def factorial num
# 	f = 1
# 	num = 1 if num == 0
# 	for n in 1..num do
# 		f *= n
# 	end
# 	f
# end