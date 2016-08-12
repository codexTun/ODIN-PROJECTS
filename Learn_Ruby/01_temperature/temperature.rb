def ftoc (fehrenheith)
	centigrate = (fehrenheith - 32) / 1.8
	centigrate.round
end

def ctof (centigrate)
	fehrenheith = (centigrate * 1.8) + 32
end
