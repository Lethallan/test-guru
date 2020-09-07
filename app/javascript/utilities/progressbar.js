document.addEventListener('turbolinks:load', function() {
  let progressBar = document.getElementById('test-progress');

  let questionNumber = progressBar.dataset.questionNumber; // кажется, переменные во вьюхе в змеином виде переводятся jsом в верблюжью ипостась
  let questionsCount = progressBar.dataset.questionsCount;

  let progressPercent = questionNumber/questionsCount * 100;

  progressBar.style.width = progressPercent + "%"

});

// посмотреть основные методы и принципы формирования переменных в js

// progress bar берётся из bootstrap
// id во вьюхе в контент таге нужен для js в getElementById, которое можно заменить и методом querySelector()
// # а data  c фигурными скобками идёт в dataset