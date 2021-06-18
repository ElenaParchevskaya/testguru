document.addEventListener("turbolinks:load", function() {
    var startTimer;
    startTimer = function() {
      var array, m, s, time, timer;
      timer = document.getElementById('timer');
      if (!timer) {
        return;
      }
      time = timer.innerHTML;
      array = time.split(':');
      m = array[0];
      s = array[1];
      if (s === '00' && m === '00') {
        window.location.reload();
        return;
      }
      if (m < 10) {
        m = "0" + m;
      }
      if (s === '00') {
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
