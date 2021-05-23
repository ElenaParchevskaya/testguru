export default class PasswordConfirmation {
  constructor(form) {
    this.form             = form
    this.password         = form.elements.user_password
    this.password_confirm = form.elements.user_password_confirmation
    this.icon_check_list  = form.querySelector('.octicon-check-circle').classList
    this.icon_x_list      = form.querySelector('.octicon-x-circle').classList

    this.setup()
  }

  resetStyleForInputs() {
    this.icon_check_list.add('hide')
    this.icon_x_list.add('hide')
  }

  checkPasswords() {
    this.resetStyleForInputs()
    if(this.password_confirm.value === this.password.value) {
      this.icon_check_list.remove('hide')
    } else {
      this.icon_x_list.remove('hide')
    }
  }

  setup() {
    this.form.addEventListener('keyup', event => {
      if (this.password_confirm.value != '') this.checkPasswords()
      else this.resetStyleForInputs()
    })
  }
}
