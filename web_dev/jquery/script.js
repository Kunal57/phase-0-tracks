// jQuery

// Make buttons black when moused-over
$(document).ready(function(){
	$("a").mouseover(function(){
		$(this).css("background-color","black");
	})
	$("a").mouseleave(function(){
		$(this).css("background-color","white");
	})
});

// Add an HTML element
$(document).ready(function(){
	$("main").append("<p>Hello and this is an appended paragraph!</p>")
});

// Rearranging Existing h1 tag
$(document).ready(function(){
	$("p").after($("a"))
});

// Removing an element
$(document).ready(function(){
	$("p").remove();
})

// Adding a Class
$(document).ready(function(){
	$("main").addClass("class");
	$("main").removeClass("class");
})

// Toggle Class on/off
$(document).ready(function(){
	$("main").toggleClass("class");
});

// Making a pragraph and changing the contents
$(document).ready(function(){
	$("main").prepend("<p>This is a new paragraph</p>")
	$("p").html("Using html to change the paragraph contents")
});