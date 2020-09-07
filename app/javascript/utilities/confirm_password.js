document.addEventListener('turbolinks:load', function () {
let control = document.getElementById('user_password_confirmation')

  let controlPC = document.getElementById('user_password')
    if (control) { control.addEventListener('input', check) }
    if (controlPC) { controlPC.addEventListener('input', check) }
});

let check = function() {
  let password = document.getElementById('user_password').value
  let conf_password = document.getElementById('user_password_confirmation').value
  const checkIcon = document.querySelector('.octicon-check')
  const wrongIcon =  document.querySelector('.octicon-circle-slash')

  if (password == conf_password && conf_password != '')  {

    checkIcon.classList.remove('hide')
    wrongIcon.classList.add('hide')

  } else if (password != conf_password && conf_password != '')  {

    checkIcon.classList.add('hide')
    wrongIcon.classList.remove('hide')
  }
}