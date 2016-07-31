// javaScript solution
var sum = 0;
for (i=0; i<1000; i++){
	if(i % 3 === 0 && i% 5 === 0){
    sum = sum + i;
	}
	else if (i % 3 === 0 || i % 5 ===0){
	  sum = sum + i;
	
	}
};
console.log(sum);




//ruby solution
sum = 0

(1...1000).each do |i|
     sum = sum + i if (i % 3 == 0 && i % 5 == 0) || i % 3 == 0 || i % 5 == 0 
end

puts sum


