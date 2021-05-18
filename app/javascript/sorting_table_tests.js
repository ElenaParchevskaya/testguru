(function() {
  document.addEventListener("turbolinks:load", function() {
    var arrow, direct, setArrow, sortTable, testNamesColumn;
    testNamesColumn = document.getElementById('nameTest');
    setArrow = function(arrow, direct) {
      return arrow.className = direct < 0 ? 'fa fa-sort-asc' : 'fa fa-sort-desc';
    };
    sortTable = function(direction) {
      var tbody, trList, trs;
      tbody = document.getElementsByTagName('tbody')[0];
      trs = tbody.rows;
      trList = [].slice.call(trs);
      trList.sort(function(a, b) {
        var nameA, nameB;
        nameA = a.children[0].innerText;
        nameB = b.children[0].innerText;
        if (nameA < nameB) {
          return -1 * direction;
        }
        if (nameA > nameB) {
          return 1 * direction;
        }
      });
      return trList.forEach(function(tr) {
        return tbody.append(tr);
      });
    };
    if (testNamesColumn) {
      arrow = testNamesColumn.children[0];
      direct = 1;
      return testNamesColumn.addEventListener('click', function() {
        direct *= -1;
        sortTable(direct);
        return setArrow(arrow, direct);
      });
    }
  });

}).call(this);
