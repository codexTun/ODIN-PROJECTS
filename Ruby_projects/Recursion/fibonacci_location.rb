def fibonacci(n, ary =[0,1,1])

  d = ary[-2] + ary[-1]
  
  ary << d

  if n < 3
    return ary[n]
  else
    return ary[-1] if n == 3
    fibonacci(n-1, ary)
  end
  
  
end 

fibonacci(13)