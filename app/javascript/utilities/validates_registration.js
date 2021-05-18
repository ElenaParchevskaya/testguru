// document.addEventListener("turbolinks:load", function() {
//   var checker, email, emailValidate, password, passwordConfirmValidate, passwordConfirmation, passwordValidate, signupForm, submit, submitInclude;
//   signupForm = document.getElementById('new_user');
//   passwordConfirmation = document.getElementById('user_password_confirmation');
//   password = document.getElementById('user_password');
//   email = document.getElementById('user_email');
//   submit = signupForm.getElementsByClassName('btn')[0];
//   checker = {
//     email: false,
//     password: false,
//     passwordConfirm: false
//   };
//   // Валидаторы формы
//   passwordValidate = function() {
//     if (password.value.length >= 6) {
//       password.classList.remove('error');
//       checker.password = true;
//     } else {
//       checker.password = false;
//     }
//     return submitInclude();
//   };
//   passwordConfirmValidate = function() {
//     if (password.value.length < 6) {
//       password.classList.add('error');
//       return passwordValidate();
//     }
//     if (passwordConfirmation.value === password.value) {
//       checker.passwordConfirm = true;
//       password.classList.add('success');
//       passwordConfirmation.classList.add('success');
//     } else {
//       checker.passwordConfirm = false;
