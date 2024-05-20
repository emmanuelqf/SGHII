<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sistema de gestión de herramientas</title>
  <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
  />
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <style>
    /* Add your custom styles here */
  </style>
  <!--<script src="script.js"></script>-->
</head>

<body>
<main class="container mt-5">
  <header class="text-center" id="main-header">
    <h1>Sistema de Gestión de Herramientas</h1>
  </header>

  <!--<nav class="navigation">
  <a href="#" class="navigation-link">Inicio</a>
  <a href="#" class="navigation-link">Acerca de los creadores</a>
  <a href="#" class="navigation-link">Política de calidad</a>
  <a href="#" class="navigation-link">Contacto</a>
</nav>-->

  <div class="row mt-5">
    <div
            class="col-lg-6 d-flex flex-column justify-content-center align-items-center mb-5"
    >
      <img
              src="images/logo.png"
              alt="Logo"
              class="mt-5 mb-4"
              style="max-width: 400px; height: auto"
      />
      <h2 class="display-6" style="font-size: 20px">
        Mejoramiento Continuo...
      </h2>
    </div>

    <div class="col-lg-6">
      <div class="card">
        <div class="card-header">
          <b>Acceso de Usuarios</b>
        </div>

        <div class="card-body">
          <form id="login-form" class="" novalidate>
            <div class="mb-3">
              <label for="usuario" class="form-label fw-bold"
              >Usuario</label
              >
              <input
                      type="text"
                      class="form-control"
                      id="usuario"
                      placeholder="Ingrese su usuario"
                      required
              />
              <div class="invalid-feedback">
                El nombre de usuario es obligatorio.
              </div>
            </div>
            <div class="mb-3">
              <label for="clave" class="form-label fw-bold"
              >Contraseña</label
              >
              <input
                      type="password"
                      class="form-control"
                      id="clave"
                      placeholder="Ingrese su contraseña"
                      required
              />
              <div class="invalid-feedback"></div>
            </div>
            <div class="d-flex justify-content-between mb-4">
              <button type="button" id="btnIniciar" class="btn btn-primary">
                Iniciar sesión
              </button>
              <input
                      class="btn btn-secondary"
                      type="button"
                      id="togglePasswordButton"
                      value="Mostrar contraseña"
              />
            </div>
            <div id="errorMessage" style="display: none"></div>
          </form>
          <a href="#">Olvidó su contraseña</a>
        </div>
      </div>
    </div>
  </div>
</main>

<script>

  //NOS ASEGURA QUE SE CARGA LA WEB ENTERA.
  $(function () {

    $( "#btnIniciar" ).click(function () {

      var usuario = $("#usuario").val();
      var clave = $("#clave").val();

      alert( usuario + " " + clave );
    });
  });
</script>
</body>
</html>