$(document).ready(function() {
	
	var settings = ["black", 16];
	makeSquares(settings[1]);
	
	$("#black").click(function () {
		do {
			var a = parseInt(prompt("Enter grid dimension (1 - 64) :",16));
		} while ( isNaN(a) || a<0 || a>64 )
		clearGrid();
		settings = ["black", a];
		makeSquares(a);
		paintBlack();
	});

	$("#colors").click(function () {
		do {
			var a = parseInt(prompt("Enter grid dimension (1 - 64) :",16));
		} while ( isNaN(a) || a<0 || a>64 )
		clearGrid();
		settings = ["colors", a];
		makeSquares(a);
		paintColors();
	});
	
	$("#clear").click(function () {
		clearGrid();
		makeSquares(settings[1]);
		if (settings[0] == "black") {
			paintBlack();
		}
		else if (settings[0] == "colors") {
			paintColors();
		}
		else {
			paintBlack();
		}
	})
	
});

function makeSquares(a) {
	for (i=1; i<a+1; i++) {
		$("#gridContainer").append('<div class="row" id="row'+i+'"></div>');
		for (j=1; j<a+1; j++) {
			$("#row"+i).append('<div class="square" id ="square'+i+'p'+j+'" data-count=0 data-r=0 data-g=0 data-b=0><p></p></div>');
		}
	}
}

function clearGrid() {
	$("#gridContainer").empty();
}

function paintBlack() {
	$(".square").mouseenter(function() {
		count = $(this).data('count') + 1;
		$(this).data('count', count);
		if (count < 11) {
			var r = Math.round(255*(1-count/10));
			$(this).css('background-color', 'rgb('+r+', '+r+', '+r+')')
			$(this).data('r',r)
		}
	});
}

function paintColors() {
	$(".square").mouseenter(function() {
		count = $(this).data('count') + 1;
		$(this).data('count', count);
		if (count == 1) {
			var r = Math.floor(Math.random()*256);
			$(this).data('r', r);
			var g = Math.floor(Math.random()*256);
			$(this).data('g', g);
			var b = Math.floor(Math.random()*256);
			$(this).data('b', b);
			$(this).css('background-color', 'rgb('+r+', '+g+', '+b+')')
		}
		else if ( count > 1 && count < 10 ){
			r = Math.round($(this).data('r')*(1-(count-1)/9));
			g = Math.round($(this).data('g')*(1-(count-1)/9));
			b = Math.round($(this).data('b')*(1-(count-1)/9));
			$(this).css('background-color', 'rgb('+r+', '+g+', '+b+')')
		}
	});
}