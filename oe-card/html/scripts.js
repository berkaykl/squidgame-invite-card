$('#main-container').css('display','none');

var deger = false;

window.addEventListener('message', function(event) {
  if (event.data.action == "open") {
    $("#main-container").fadeIn(500).css("display", "flex");
    deger = true;
    $('#gameNum').val(event.data.number)
  }
});

$(document).keydown((event) => {
  if (event.key == 'Escape') {
    if (deger) {
      deger = false;

      $("#main-container").fadeOut(500);
      $.post('http://oe-card/exit')
    }
  }
});

var cardCont = document.querySelector('.cards-container');
var card = document.querySelector('.card');

cardCont.addEventListener('click', function() {
  card.classList.toggle('flipped');
});