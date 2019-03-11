function click() {
  console.log('click')
}

function bang() {
  console.log('BANG!')
}

let func;
if (Math.random() < 1 / 6) {
  func = bang
} else {
  func = click
}

func();