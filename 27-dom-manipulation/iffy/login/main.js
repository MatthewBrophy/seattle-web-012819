/*
- add unique ids to login divs
- add ids to spans
- add ids to buttons

- make function to get user input
- make a login toggle function

- click handlers
*/
const loggedOut = document.getElementById('logged-out');
const loggedIn = document.getElementById('logged-in');

const username = document.getElementById('username');
const network = document.getElementById('network');

const usernameGoogle = document.getElementById('username-google');
const usernameFacebook = document.getElementById('username-facebook');

const loginGoogle = document.getElementById('login-google');
const loginFacebook = document.getElementById('login-facebook');
const logout = document.getElementById('logout') // not actually necessary (but excellent practice)

loggedIn.style.display = 'none'
logout.style.display = 'none'

loginGoogle.addEventListener('click', function() {
  console.log('clicked google')
  const inputUsername = usernameGoogle.value;
  usernameGoogle.value = '';

  let google = Google.login(inputUsername)
  username.textContent = google.username;
  network.textContent = google.network;

  loggedOut.style.display = 'none'
  loggedIn.style.display = 'initial'

  const logins = document.getElementsByClassName('login-option');
  logins[0].style.display = 'none'
  logins[1].style.display = 'none'

  logout.style.display = 'initial'
});

loginFacebook.addEventListener('click', function() {
  console.log('clicked facebook')
  const inputUsername = usernameFacebook.value;
  usernameFacebook.value = '';

  let facebook = Facebook.login(inputUsername)
  username.textContent = facebook.username;
  network.textContent = facebook.network;

  loggedOut.style.display = 'none'
  loggedIn.style.display = 'initial'

  const logins = document.getElementsByClassName('login-option');
  logins[0].style.display = 'none'
  logins[1].style.display = 'none'

  logout.style.display = 'initial'
});

logout.addEventListener('click', function() {
  loggedOut.style.display = 'initial'
  loggedIn.style.display = 'none'

  const logins = document.getElementsByClassName('login-option');
  logins[0].style.display = 'initial'
  logins[1].style.display = 'initial'

  logout.style.display = 'none'
});