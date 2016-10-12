 def bubble_sort(arr)
    n = arr.length
    swapped = false
	(n-1).times do 
		for i in 1...n do
          if arr[i-1] > arr[i] 
             arr[i-1], arr[i] = arr[i], arr[i-1]
             swapped = true
             end
        end
    end
    arr
 end
 	
 bubble_sort([4,3,78,2,0,2])
  