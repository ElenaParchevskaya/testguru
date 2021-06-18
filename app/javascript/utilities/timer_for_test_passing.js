document.addEventListener("turbolinks:load", function() {
  var startTimer;
  startTimer = function() {
    var m, s, time, timer, _ref;
    timer = document.getElementById('timer');
    time = timer.innerHTML;
    _ref = time.split(':'), m = _ref[0], s = _ref[1];
    if (m <= 0 && s <= 0) {
      document.getElementById('sendAnswer').click();
      return;
    }
    if (s === '0' || s === '00') {
      s = 59;
      m--;
    } else {
      s--;
    }
    if (s < 10) {
      s = "0" + s;
    }
    timer.innerHTML = m + ":" + s;
    return setTimeout(startTimer, 1000);
  };
  if (document.getElementById('timer')) {
    return startTimer();
  }
});
