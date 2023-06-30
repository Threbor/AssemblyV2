// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

// messages text area centered
document.addEventListener("turbo:load", function() {
  const messageField = document.getElementById("messageField");
  if (messageField) {
    messageField.focus();
    messageField.scrollIntoView({ behavior: 'smooth', block: 'center' });
  }
});


// caroussel universe show synopses
var currentIndex = 0;
var elements = document.querySelectorAll('.universe_synopse');

function showElement(index) {
  elements.forEach(function(element) {
    element.classList.remove('selected');
  });

  var selectedElement = elements[index];
  selectedElement.classList.add('selected');

  console.log('Element sélectionné :', selectedElement.dataset.id);
}

document.getElementById('previous-synopse-button').addEventListener('click', function() {
  currentIndex--;
  if (currentIndex < 0) {
    currentIndex = elements.length - 1;
  }
  showElement(currentIndex);
});

document.getElementById('next-synopse-button').addEventListener('click', function() {
  currentIndex++;
  if (currentIndex >= elements.length) {
    currentIndex = 0;
  }
  showElement(currentIndex);
});

document.getElementById('random-synopse-button').addEventListener('click', function() {
  var newIndex;
  do {
    newIndex = Math.floor(Math.random() * elements.length);
  } while (newIndex === currentIndex);
  currentIndex = newIndex;
  showElement(currentIndex);
});


showElement(currentIndex);


// caroussel universe index characters
var characterIndex = 0;
var characterElements = document.querySelectorAll('.universe_character');

function updateFormFields() {
  document.getElementById('synopse-id-field').value = elements[currentIndex].dataset.id;
  document.getElementById('character-id-field').value = characterElements[characterIndex].dataset.id;
}

function showCharacter(index) {
  characterElements.forEach(function(element) {
    element.classList.remove('selected');
  });
  var selectedElement = characterElements[index];
  selectedElement.classList.add('selected');
  console.log('Personnage sélectionné :', selectedElement.dataset.id);
}

document.getElementById('previous-character-button').addEventListener('click', function() {
  characterIndex--;
  if (characterIndex < 0) {
    characterIndex = characterElements.length - 1;
  }
  updateFormFields();
  showCharacter(characterIndex);
});

document.getElementById('next-character-button').addEventListener('click', function() {
  characterIndex++;
  if (characterIndex >= characterElements.length) {
    characterIndex = 0;
  }
  updateFormFields();
  showCharacter(characterIndex);
});

document.getElementById('random-character-button').addEventListener('click', function() {
  var newIndex;
  do {
    newIndex = Math.floor(Math.random() * characterElements.length);
  } while (newIndex === characterIndex);
  characterIndex = newIndex;
  updateFormFields();
  showCharacter(characterIndex);
});

updateFormFields();
showCharacter(characterIndex);
