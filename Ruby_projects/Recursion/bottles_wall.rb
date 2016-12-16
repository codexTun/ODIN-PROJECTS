def bottles(n)
  x = "#{n} bottles of beer on the wall"
  return x.delete!("s") if n == 0
  puts x
  bottles(n-1)
end 

bottles(4)