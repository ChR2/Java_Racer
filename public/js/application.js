// $(document).ready(function() {console.log("kjhewar")});

$(document).ready(function() {
  $(document).bind('keyup', game);
});


// #update_player_position('player1', 10);



var game = function(event) {
    
    if (event.keyCode === 81){
     $("#player1_strip").find('.active').next().attr("class","active");
     $("#player1_strip").find('.active').first().attr("class","");
   }
    if (event.keyCode === 80){
       $("#player2_strip").find('.active').next().attr("class","active");
       $("#player2_strip").find('.active').first().attr("class","");
     } 

     if ($('#player1_strip td:last-child').hasClass('active')){
      $('h2').text("Player 1 WON");
      $(document).delay(5000);
      $(document).unbind('keyup');
      // $("#player1_strip").find('td').first().attr("class","");
      // $("#player2_strip").find('td').first().attr("class","");
      // $("#player1_strip").find('td').first().attr("class","active");
      // $("#player2_strip").find('td').first().attr("class","active");
      }
      if ($('#player2_strip td:last-child').hasClass('active')){
      $('h2').text("Player 2 WON");
      $(document).unbind('keyup');
      }
  };
