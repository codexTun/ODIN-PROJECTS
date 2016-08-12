def add (num1, num2)
	num1 + num2
end

def subtract (num1, num2)
	num1 - num2
end

def sum (array)
    sum_array = 0
	array.each do |x| sum_array += x
	end
	sum_array
end

def multiply (array)
	sum_array = 1
	array.each do |i| sum_array *= i
	end
	sum_array
end

def power (num1, num2)
	num1**num2
end

def factorial(n)
  (2..n).reduce(1, :*)
end



