"use strict";

console.log("Hello World! 1 + 1 == " + (1 + 1))

// do what ever it takes to get the actual time
// then we can do more stuff to turn that into a string
// then we can do the same thing here with textContent
// to display it in the page

function displayDate(id) {
  const span = document.getElementById(id)
  const dd = new Date();
  const hour = dd.getHours();
  let minute = dd.getMinutes();
  let seconds = dd.getSeconds();

  minute = zeroPad(minute);
  seconds = zeroPad(seconds);

  span.textContent = `${hour}:${minute}:${seconds}`;
}

function zeroPad(value) {
  if (value < 10) {
    value = '0' + value;
  }
  return value
}

function randomBackgroundColor() {
  const body = document.body;

  const dd = new Date();
  const seconds = dd.getSeconds();
  if (seconds > 30) {
    setBackgroundColor("goldenrod")
  } else {
    body.style.color = "white"
    setBackgroundColor("black")
  }
}

function setBackgroundColor(color) {
  document.body.style.backgroundColor = color
}

displayDate("timestamp")
randomBackgroundColor()

const button1 = document.getElementById("black-background")
const button2 = document.getElementById("golden-background")
const button3 = document.getElementById("blue-background")

const setBlack = function() {
  console.log('clicked!')
  setBackgroundColor("black")
};

button1.addEventListener('click', setBlack);

button2.addEventListener('click', function() {
  console.log('clicked!')
  setBackgroundColor("goldenrod")
});

button3.addEventListener('click', function() {
  console.log('clicked!')
  setBackgroundColor("rgb(50, 100, 200)")
});

const updateTime = document.getElementById("update-time");
updateTime.addEventListener('click', function() {
  displayDate("timestamp")
});

const spiceParagraphs = document.getElementById("spice-paragraphs")
spiceParagraphs.addEventListener("click", function() {
  const allParagraphs = document.getElementsByTagName('p');
  console.log(allParagraphs)
  
  for (let i = 0; i < allParagraphs.length; i++) {
    let paragraph = allParagraphs[i]
    paragraph.textContent = "spice spices spices spisces!!"
  }
})

const highlighthard = document.getElementById("highlight-hard")
highlighthard.addEventListener("click", function() {
  const listitems = document.getElementsByClassName('hard');
  
  for (let i = 0; i < listitems.length; i++) {
    let listitem = listitems[i]
    listitem.style.color = 'yellow';
  }
})

const highlighthardLi = document.getElementById("highlight-hard-li")
highlighthardLi.addEventListener("click", function() {
  const listitems = document.querySelectorAll('li.hard');
  
  for (let i = 0; i < listitems.length; i++) {
    let listitem = listitems[i]
    listitem.style.color = 'yellow';
  }
})

let totalKeyPresses = 0;
let eKeyPresses = 0;
document.addEventListener('keyup', function(eventInfo) {
  console.log('keypressed!!', eventInfo)

  totalKeyPresses++;

  let isE = eventInfo.key === 'e';
  if (isE) {
    eKeyPresses++
  }

  document.getElementById('total-key-presses').textContent = totalKeyPresses
  document.getElementById('e-key-presses').textContent = eKeyPresses
})