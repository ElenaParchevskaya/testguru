document.addEventListener("turbolinks:load", function() {
  btnsEdit = document.getElementsByClassName('edit');

  const getEventClick = btn => {
    return btn.addEventListener('click', function() {
      return testInlineEdit(this);
    });
  };

  if (btnsEdit) {
    for (_i = 0, _len = btnsEdit.length; _i < _len; _i++) {
      btn = btnsEdit[_i];
      getEventClick(btn);
    }
  }

  return testInlineEdit = function(btn) {

    form = document.querySelectorAll("form[data-test-id='" + btn.dataset.testId + "']");
    if (btn.dataset.state === 'true') {
      form[0].style.display = 'none';
      btn.dataset.state = 'false';
      return btn.textContent = 'Изменить';
    } else {
      form[0].style.display = 'block';
      btn.dataset.state = 'true';
      return btn.textContent = 'Отмена';
    }
  };
});
