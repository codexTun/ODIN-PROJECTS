class Array
	
	def my_each
		i = 0
		while i < self.size
			yield(self[i])
			i+=1
		end
		self
	end

	def my_each_with_index
		i = 0
		while i < self.size
			yield(self[i], i)
			i+=1
		end
		self
	end 
	
	def my_select
		arr = []
		self.my_each_with_index do |x,y|
			if yield(x) == true
		 		arr << x 
			end
		end 
		arr
	end
	
	def my_all?
		arr = []
		self.my_each do |x|
			if yield(x) == true
				arr.unshift("true")
			elsif yield(x) == false 
				arr << "false"
			end
			
		end
		if arr[0] == "true" && arr[-1] == "true"
			true
		else
			false
		end 
	end
				
end 