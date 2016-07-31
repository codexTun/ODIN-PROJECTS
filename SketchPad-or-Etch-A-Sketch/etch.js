
$(document).ready(function(){
	$('body').prepend('<div class = "container"></div>')
	$('.container').prepend('<button onclick="newGrid(); return false">New Grid</button>')
	      .append('<ul></ul>')
	      .append('<ul></ul>')
		  .append('<ul></ul>')
		  .append('<ul></ul>')
	$('ul').append('<li></li>')
		 .append('<li></li>')
		 .append('<li></li>')
		 .append('<li></li>')


// now I will add css designs to my squares//
$('li').css({
	width: '20px',
	'list-style-type': 'none',
	height:'20px',
	border:'1px black solid',
	display: 'inline-block',
	margin : '0 1px',
	'box-sizing' : 'border-box' 
}).mouseenter(function() {
    $(this).css ('background-color','red');
  });
$('li').mouseleave(function() {
    $(this).css ('background-color','white');
  });

$('.container').css ({ 
	margin: '0 auto',
  });

$('ul').css({
	margin : '0',
	padding: '0'
  });

$('button').css ({
	margin: '10px 0',
	padding : '10px',
	'font-size' : '16px'
  });



});

function newGrid(){
$('li').css('background-color' , 'white');
$('.container').remove()
$('body').prepend('<div class ="container"></div>');

var width = prompt('Enter a desired width:');

if (width > 90){
	var width = prompt('width must be less than 90');
}

var height = prompt ('Enter a desired height:');

if (height > 40 ) {
	var height = prompt('Height must be less than 40');
}

for ( var i=0 ; i <=height ; i++){
	$('.container').append('<ul></ul>');
}

for ( var i=0 ; i <= width ; i++) {
	$('ul').append('<li></li>');
}

$('.container').prepend('<button onclick="newGrid(); return false">New Grid</button>');


 $('li').css({
    display: 'inline-block',
    'list-style-type': 'none',
    height: '25px',
    width: '25px',
    border: '1px black solid',
    margin: '0 1px',
    'box-sizing': 'border-box'
  }).hover(function() {
    $(this).css('background-color','green');
   
  });

  $('.container').css({
    margin: '0 auto'
  });

  $('ul').css({
    padding: '0',
    margin: '0'
  });

  $('button').css({
    margin: '10px 0',
    padding: '10px',
    'font-size': '16px'
  });
};



