const form = document.getElementById('todo-form');
const input = document.getElementById('todo-input');
const list = document.getElementById('todo-list');

form.addEventListener('submit', function(ev) {
  ev.preventDefault();

  const li = document.createElement('li')
  li.textContent = input.value

  // attach click listener
  li.addEventListener('click', removeListItem)

  list.appendChild(li)
});

function removeListItem(ev) {
  ev.target.remove()
}
