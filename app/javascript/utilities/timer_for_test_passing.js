document.addEventListener("turbolinks:load", function() {
  let startTimer = function() {

    let timer = document.getElementById('timer');
    const min, sek, _ref;
    const time = timer.innerHTML;
    _ref = time.split(':'), min = _ref[0], sek = _ref[1];

    if (min <= 0 && sek <= 0) {
      document.getElementById('sendAnswer').click();
      return;
    }

    if (sek === '0' || sek === '00') {
      sek = 59;
      min--;
    } else {
      sek--;
    }

    if (s < 10) {
      sek = "0" + sek;
    }

    timer.innerHTML = min + ":" + sek;
    return setTimeout(startTimer, 1000);
  };
  
  if (document.getElementById('timer')) {
    return startTimer();
  }
});
