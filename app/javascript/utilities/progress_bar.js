document.addEventListener("turbolinks:load", function() {
  let progressBar = document.getElementById('progressBar');

  function progress() {
    const block = progressBar.children[0];
    const progressValue = Number.parseInt(progressBar.dataset.progress);
    return block.style.width = progressValue + "%";
  };

  if (progressBar) progress()
});
