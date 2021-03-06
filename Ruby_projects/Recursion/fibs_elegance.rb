#takes a number and returns that many members of the fibonacci sequence

def fibs_rec(n, i = 0,  ary = [0,1])
  return ary if n == 2
  
  ary << ary[i] + ary[i+1]

  i += 1
  fibs_rec(n-1,i,ary )
  
end 

#Nonrecursion 

def fibs(n)
  arr = [0,1,1]
  a = 0
  b = 1
  c = 1
  
  (n-3).times do |x| 
    d = b + c 
    arr << d
    b = c
    c = d
  end
  arr
end

