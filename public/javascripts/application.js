jQuery.noConflict();
jQuery(document).ready(function(){
   jQuery("a").click(function(event){
     alert("Thanks for visiting!");
     event.preventDefault();
   });
 });
 
jQuery(function() {
    jQuery( "#draggable" ).draggable();
  });