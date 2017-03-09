def sort(ary)
arr = ary.each_slice(2).to_a
   
    arr.each do |x| 
        a = x[0]
        if x[0] && x[1] && (x[0] > x[1])
      
          x[0] =x[1]
          x[1] = a
        end
      end 
end 
 
 
def delete_2d(arr,value,index)
  arr.each do |x|
    if value == x
      x.delete(index)
    end 
  end 

end 
 

def merge_sort(ary, final=[])
  
  if !defined? arr
    
    
    arr = sort(ary)
    
    no = ary.size
    
   
  end
  
  return final if final.size == no
  
  
  if arr.flatten.count == 1
    final << arr[0][0]
  
    merge_sort(ary,final)
    
  elsif arr[0][0] && arr[1][0] && (arr[0][0] > arr[1][0])
    final << arr[1][0]
    delete_2d(arr,arr[1],arr[1][0])
    merge_sort(ary,final)
  else
    final << arr[0][0]
    merge_sort(ary,final)
  end 
  
end 
  

merge_sort([105,5,6,8,67])