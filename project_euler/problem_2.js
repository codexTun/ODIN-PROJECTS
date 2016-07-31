// js solution
sum = 0;
my_array = [];
var looping = function(n) {
    
    var a = 0, b = 1, f = 1;
    for(var i = 2; i <= n; i++) {
        
        f = a + b;
        a = b;
        b = f;
    if (f < n ) {
      my_array.push(f);
        }
    else {
        break;
        }
    }
     for(j=0; j<=n; j++){   
        if (my_array[j] % 2 === 0) {  
            sum += my_array[j];  
    
        }  
     }  
   
};

looping(4000000);
console.log(sum);
