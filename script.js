const form = document.getElementById('login-form');
const usernameInput = document.getElementById('usuario');
const passwordInput = document.getElementById('contrasena');
const togglePasswordButton = document.getElementById('togglePasswordButton');
const errorMessage = document.getElementById('errorMessage');

// Function to show or hide the password
function togglePassword() {
  const isHidden = passwordInput.type === 'password';
  passwordInput.type = isHidden ? 'text' : 'password';
  togglePasswordButton.textContent = isHidden ? 'Ocultar contraseña' : 'Mostrar contraseña';
}

// Function to validate the form
function validateForm() {
  const username = usernameInput.value.trim();
  const password = passwordInput.value.trim();

  // Check if username and password are empty
  if (!username || !password) {
    errorMessage.textContent = 'Por favor, complete todos los campos.';
    return false;
  }

  // Check if username is at least 6 characters long
  if (username.length < 6) {
    errorMessage.textContent = 'El nombre de usuario debe tener al menos 6 caracteres.';
    return false;
  }

  // Check if password is at least 8 characters long and contains at least one uppercase letter, one lowercase letter, and one number
  const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}$/;
  if (!passwordRegex.test(password)) {
    errorMessage.textContent = 'La contraseña debe tener al menos 8 caracteres, incluyendo una letra minúscula, una mayúscula y un número.';
    return false;
  }

  // If all validations pass, submit the form
  return true;
}

// Add event listener to the form submit event
form.addEventListener('submit', (event) => {
  event.preventDefault(); // Prevent the default form submission

  // Validate the form
  const isValid = validateForm();

  if (isValid) {
    // If valid, submit the form (you'll need to implement your form submission logic here)
    console.log('Formulario enviado correctamente');
  } else {
    // If not valid, display the error message
    errorMessage.style.display = 'block';
  }
});

// Add event listener to the toggle password button
togglePasswordButton.addEventListener('click', togglePassword);