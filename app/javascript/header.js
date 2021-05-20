document.addEventListener("turbolinks:load", function() {
  var addActiveToLink, link, navlinks, _i, _len, _results;
  navlinks = document.getElementsByClassName('nav-link');
  addActiveToLink = function(link) {
    if (link.href === location.href) {
      return link.classList.add('active');
    }
  };
  _results = [];
  for (_i = 0, _len = navlinks.length; _i < _len; _i++) {
    link = navlinks[_i];
    _results.push(addActiveToLink(link));
  }
  return _results;
});
