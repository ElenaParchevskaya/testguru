document.addEventListener("turbolinks:load", function() {
  var checker, email, emailValidate, password, passwordConfirmValidate, passwordConfirmation, passwordValidate, signupForm, submit, submitInclude;
  signupForm = document.getElementById('new_user');
  passwordConfirmation = document.getElementById('user_password_confirmation');
  password = document.getElementById('user_password');
  email = document.getElementById('user_email');
  if (signupForm) {
    submit = signupForm.getElementsByClassName('btn')[0];
  }
  checker = {
    email: false,
    password: false,
    passwordConfirm: false
  };

  passwordValidate = function() {
    if (password.value.length >= 6) {
      password.classList.remove('error');
      checker.password = true;
    } else {
      checker.password = false;
    }
    return submitInclude();
  };

  passwordConfirmValidate = function() {
    if (password.value.length < 6) {
      password.classList.add('error');
      return passwordValidate();
    }
    if (passwordConfirmation.value === password.value) {
      checker.passwordConfirm = true;
      password.classList.add('success');
      passwordConfirmation.classList.add('success');
    } else {
      checker.passwordConfirm = false;
      password.classList.remove('success');
      passwordConfirmation.classList.remove('success');
    }
    return submitInclude();
  };

  emailValidate = function() {
    if (email.value.match(/.+@.+\..+/i)) {
      checker.email = true;
      email.classList.add('success');
    } else {
      checker.email = false;
      email.classList.remove('success');
    }
    return submitInclude();
  };
  
  submitInclude = function() {
    return submit.disabled = !(checker.email && checker.password && checker.passwordConfirm);
  };
  if (signupForm && passwordConfirmation) {
    passwordConfirmation.onkeyup = function() {
      return passwordConfirmValidate();
    };
    password.onkeyup = function() {
      return passwordValidate();
    };
    return email.onkeyup = function() {
      return emailValidate();
    };
  }
});
