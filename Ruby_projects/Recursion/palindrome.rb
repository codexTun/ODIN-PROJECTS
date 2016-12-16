def palindrom(n,g="",k=-1)
  g << n[k].to_s
  if (k == -(n.length) && g == n) || n.length == 0
    return true
  elsif k == -(n.length) && g != n
    return false
  end 
    palindrom(n,g,k-1)
end 

palindrom("mau")