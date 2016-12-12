// JavaScript jQuery to make the home page album art enlarge on mouse hover using 
// http://stackoverflow.com/questions/20078250/simple-jquery-hover-enlarge

$(document).ready(function() {
	// on mouse hovering over the image
    $('img').hover(function() {
    	// use the css transition to enlarge the current image
        $(this).addClass('transition');
    
    }, function() {
    	// remove css when the mouse is no longer hovering
        $(this).removeClass('transition');
    });
});