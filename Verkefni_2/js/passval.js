var pass1 = document.getElementById("userPassword");
var pass2 = document.getElementById("userPassword2");

function validatePassword(){
  if(pass1.value != pass2.value) {
    pass2.setCustomValidity("Lykilorð verða að vera eins!");
  } else {
    pass2.setCustomValidity('');
  }
}

pass1.onchange = validatePassword;
pass2.onkeyup = validatePassword;