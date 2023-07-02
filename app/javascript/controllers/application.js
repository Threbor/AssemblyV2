import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// const textArea = document.querySelector('#my-text-area');
// const navbar = document.querySelector('.navbar');

// textArea.addEventListener('focus', () => {
//   navbar.classList.add('hidden');
// });

// textArea.addEventListener('blur', () => {
//   navbar.classList.remove('hidden');
// });


// caroussel universe show synopses

// var elementsExist = document.querySelectorAll('.universe_synopse');
// console.log(elementsExist);

// document.addEventListener('DOMContentLoaded', function () {
//   var elementsExistV2 = document.querySelectorAll('.universe_synopse');
//   console.log(elementsExistV2);
// });

// document.addEventListener('DOMContentLoaded', function () {
//   var elements = document.querySelectorAll('.universe_synopse');
//   var currentIndex = Math.floor(Math.random() * elements.length);

//   function showSynopsis(index) {
//     elements.forEach(function(element) {
//       element.classList.remove('selected');
//     });

//     var selectedElement = elements[index];
//     selectedElement.classList.add('selected');

//     console.log('Element sélectionné :', selectedElement.dataset.id);
//   }

//   document.getElementById('previous-synopse-button').addEventListener('click', function() {
//     currentIndex--;
//     if (currentIndex < 0) {
//       currentIndex = elements.length - 1;
//     }
//     showSynopsis(currentIndex);
//   });

//   document.getElementById('next-synopse-button').addEventListener('click', function() {
//     currentIndex++;
//     if (currentIndex >= elements.length) {
//       currentIndex = 0;
//     }
//     showSynopsis(currentIndex);
//   });

//   document.getElementById('random-synopse-button').addEventListener('click', function() {
//     var newIndex;
//     do {
//       newIndex = Math.floor(Math.random() * elements.length);
//     } while (newIndex === currentIndex);
//     currentIndex = newIndex;
//     showSynopsis(currentIndex);
//   });

//   showSynopsis(currentIndex);

//   // caroussel universe index characters
//   var characterIndex = 0;
//   var characterElements = document.querySelectorAll('.universe_character');

//   function updateFormFields() {
//     document.getElementById('synopse-id-field').value = elements[currentIndex].dataset.id;
//     document.getElementById('character-id-field').value = characterElements[characterIndex].dataset.id;
//   }

//   function showCharacter(index) {
//     characterElements.forEach(function(element) {
//       element.classList.remove('selected');
//     });
//     var selectedElement = characterElements[index];
//     selectedElement.classList.add('selected');
//     console.log('Personnage sélectionné :', selectedElement.dataset.id);
//   }

//   document.getElementById('previous-character-button').addEventListener('click', function() {
//     characterIndex--;
//     if (characterIndex < 0) {
//       characterIndex = characterElements.length - 1;
//     }
//     updateFormFields();
//     showCharacter(characterIndex);
//   });

//   document.getElementById('next-character-button').addEventListener('click', function() {
//     characterIndex++;
//     if (characterIndex >= characterElements.length) {
//       characterIndex = 0;
//     }
//     updateFormFields();
//     showCharacter(characterIndex);
//   });

//   document.getElementById('random-character-button').addEventListener('click', function() {
//     var newIndex;
//     do {
//       newIndex = Math.floor(Math.random() * characterElements.length);
//     } while (newIndex === characterIndex);
//     characterIndex = newIndex;
//     updateFormFields();
//     showCharacter(characterIndex);
//   });

//   updateFormFields();
//   showCharacter(characterIndex);
// });
