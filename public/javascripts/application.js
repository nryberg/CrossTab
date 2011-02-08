jQuery.noConflict();
// jQuery(document).ready(function(){
//    jQuery("a").click(function(event){
//      alert("Thanks for visiting!");
//      event.preventDefault();
//    });
//  });
var $j = jQuery.noConflict();
$j(document).ready(function() {
    $j('#agenda_meeting_date').datepicker();
  });
$j(document).ready(function() {
    $j('#draggable').draggable();
    $j(".droppable").droppable({
          drop: function( event, ui ) {
            $j( this )
              .addClass( "ui-state-highlight" )
              .find( "p" )
                .html($j( ".ui-draggable") );
          }
      });
  });