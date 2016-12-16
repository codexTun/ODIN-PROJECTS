#takes a number and returns that many members of the fibonacci sequence

def fibo (n)
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
  
  
