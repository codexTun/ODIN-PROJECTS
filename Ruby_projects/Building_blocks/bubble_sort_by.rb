 def bubble_sort_by(arr)
    n = arr.length
    swapped = false
	(n-1).times do 
		for i in 1...n do
          if arr[i-1].length > arr[i].length
             arr[i-1], arr[i] = arr[i], arr[i-1]
             swapped = true
             end
        end
    end
    arr
 end
 	
 bubble_sort_by(["hi","hello","hey"])