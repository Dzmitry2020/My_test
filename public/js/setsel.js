var testTitleForm = document.getElementById('test_id');

if(!localStorage.getItem('test_id')) {
  populateStorage();
} else {
  setSelect();
}

function populateStorage() {
  localStorage.setItem('test_id', document.getElementById('test_id').value);
  setSelect();
}

function setSelect() {
  var currentTest = localStorage.getItem('test_id');

  document.getElementById('test_id').value = currentTest;

}

testTitleForm.onchange = populateStorage;