const list = document.getElementById("rainbow")
const body = document.body

let red = 0
let green = 0
let blue = 0

const MAX = 255
count = 0

setInterval(function () {
  red++
  if (red === MAX) {
    red = 0
    green++

    if (green === MAX) {
      green = 0;
      blue++

      if (blue === MAX) {
        blue = 0
      }
    }
  }

  body.style.backgroundColor = `rgb(${red}, ${green}, ${blue})`
}, 1)