module Enumerable
	
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

	def my_any?
		self.my_each do|x|
			if yield(x) == true
				return true
			else
				return false
			end
		end
	end	

	def my_none?
			self.my_each do |x|
				if yield(x) == true
				return false
				else
				return true
				end
			end
		
	end

	def my_count
		self.index(self.last) + 1
	end 
	
	def my_map
		self.each_with_index do |x,y|
			self[y] =yield(x)
		end
	end 

	def my_inject(n = nil)
		i= 0
		x = n ||= self[0]
	
		if x == self[0]
			while i < self.size - 1
				a = yield(x, self[i+1])
				x = a
				i += 1
			end
		elsif x == n 
			while i < self.size
				a = yield(x, self[i])
				x = a
				i += 1
			end
				
		end  
		a
	end 
	

				
end 


=begin	
#replace the my_map method above with this greyed method
	def my_map(proc = nil, &block)
		if proc && block
			self.each_with_index do |x,y|
				self[y] =proc.call(x)
			end
		else
			self.each_with_index do |x,y|
				if proc
					self[y] =proc.call(x)
					
				elsif block
					self[y] =block.call(x)
				else 
					
					self[y] =yield(x)
				end
			end
		end
	end 
	
=end

def multiply_els(n)
	n.my_inject do |x,y| x * y 
	end 
end
arrr = ["fash", "garri", "eat"]
arr = [6,2,8,4]

my_proc = Proc.new do |x| x * 2 
end

arr.my_map(&my_proc) do  |x| x * 2 
end 
