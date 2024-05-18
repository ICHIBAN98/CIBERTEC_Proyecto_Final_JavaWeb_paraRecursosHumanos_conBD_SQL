<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import = "entidades.Workers" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style type="text/css">
	.error-message {
	 	color: red; 
    	font-size: 14px;
    	font-style: italic; 
	}
   		
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand text-white fs-2" href="#">Reclutamiento de
				Personal</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-white fs-4" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Mantenimiento Empleados </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								onclick="window.location='Registrado.jsp'">Registrar
									Empleado</a></li>
							<li><a class="dropdown-item"
								onclick="location.href='WorkServlet?type=listar'">Listado de
									Empleados</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-white fs-4" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Mantenimiento Candidatos </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								onclick="window.location='RegistroCandidato.jsp'">Registrar
									Candidato</a></li>
							<li><a class="dropdown-item"
								onclick="location.href='CandidatoServlet?type=listar'">Listado de
									Candidatos</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-white fs-4" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Reportes </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								onclick="window.location='FiltradoEmpleados.jsp'">Filtrado
									de Empleados</a></li>
							<li><a class="dropdown-item"
								onclick="window.location='FiltradoCandidatos.jsp'">Filtrado
									de Candidatos</a></li>
						</ul></li>
				</ul>
				<form class="d-flex" role="search" action="AuthServlet"
					method="post">
					<input name="type" value="logout" type="hidden">
					<button class="btn btn-danger fs-4" type="submit">Logout</button>
				</form>
			</div>
		</div>
	</nav>
	<br>
	<form action="WorkServlet" method="post" name = "FormularioRegistro">
	<%
	
		Workers work = (Workers) request.getAttribute("data");
	
	%>
		<input name = "txtIdWorker" value = "<%= work.getIdWorkers() %>" type = "hidden">
		<input name = "type" value = "editar" type = "hidden">
		<br>
		<div class="text-center text-decoration-underline">
			<h1>Editar Informaci�n de Empleados Nuevos</h1>
		</div>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row g-3 align-items-center">
				<div class="col-auto fs-3">
					<label class="col-form-label">Nombres
						Completos : </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text" name = "txtNombres" class="form-control border border-black" aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getNombres():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Apellido
						Paterno : </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text"  name = "txtApellidoP" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getApellidoP():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Apellido
						Materno : </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text" name = "txtApellidoM" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getApellidoM():""%>">
				</div>
			</div>
		</div>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row g-3 align-items-center">
				<div class="col-auto fs-3">
					<label class="col-form-label">DNI :</label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text" name = "txtDni" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getDni():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Direcci�n
						: </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text" name = "txtDireccion" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getDireccion():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Telefono
						: </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text" name = "txtTelefono" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getTelefono():""%>">
				</div>
			</div>
		</div>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row g-3 align-items-center">
				<div class="col-auto fs-3">
					<label class="col-form-label">Fecha de
						Nacimiento : </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="date" name = "txtNacimiento" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getFechaNacimiento():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Correo :
					</label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="email" name = "txtCorreo" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getCorreo():""%>">
				</div>
			</div>
		</div>
		<br>
		<div class="text-decoration-underline container">
			<h2>Informaci�n del Contrato</h2>
		</div>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row g-3 align-items-center">
				<div class="col-auto fs-3">
					<label class="col-form-label">Salario (S/) :</label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text" name = "txtSalario" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getSalario():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Jornada
						Diaria : </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="text" name = "txtJornada"
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getJornadaDiaria():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Cargo :
					</label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<select class="form-control border border-black" name = "txtCargo">
						<option value="<%= (work != null)? work.getCargo():""%>" disable selected hidden><%= (work != null)? work.getCargo():""%></option>
						<option value="Trabajador">Trabajador</option>
						<option value="Programador">Programador</option>
						<option value="Limpieza">Limpieza</option>
						<option value="Seguridad">Seguridad</option>
					</select>
				</div>
			</div>
		</div>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row g-3 align-items-center">
				<div class="col-auto fs-3">
					<label class="col-form-label">Inicio
						del Contrato :</label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="date" name = "txtInicioContrato" 
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getInicioContrato():""%>">
				</div>
				<div class="col-auto fs-3">
					<label class="col-form-label">Fin del
						Contrato : </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<input type="date" name = "txtFinContrato"
						class="form-control border border-black"
						aria-describedby="passwordHelpInline" value = "<%= (work != null)? work.getFinContrato():""%>">
				</div>
				<div class="col-auto fs-3">
					<label for="inputPassword6" class="col-form-label">Tipo
						Contrato : </label>
				</div>
				<div class="col-auto fs-3 input-group-lg">
					<select class="form-control border border-black" name = "txtTipoContrato">
						<option value =" <%= (work != null)? work.getTipoContrato():""%>" disable selected hidden><%= (work != null)? work.getTipoContrato():""%></option>
						<option value = "Determinado">Determinado</option>
						<option value = "Indeterminado">Indeterminado</option>
						<option value = "Tiempo Parcial">Tiempo Parcial</option>
					</select>
				</div>
			</div>
		</div>
		<br>
		<div class="text-center">
			<input type="submit" class="btn btn-primary btn-lg"
				value="Actualizar Trabajador">
		</div>
	</form>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script>
  $(function(){
    $("form[name='FormularioRegistro']").validate({
    	errorClass: "error-message",
        
      rules: {
        txtNombres: {
          required: true
        },
        txtApellidoP: {
          required: true
        },
        txtApellidoM: {
          required: true
        },
        txtDni: {
          required: true
        },
        txtDireccion: {
          required: true
        },
        txtTelefono: {
          required: true
        },
        txtNacimiento: {
          required: true
        },
        txtCorreo: {
          required: true
        },
        txtSalario: {
          required: true
        },
        txtJornada: {
          required: true
        },
        txtInicioContrato: {
          required: true
        },
        txtFinContrato: {
          required: true
        }
      },
      messages: {
    	  txtNombres: "Por favor ingresa tu nombre",
          txtApellidoP: "Por favor ingresa tu apellido paterno",
          txtApellidoM: "Por favor ingresa tu apellido materno",
          txtDni: "Por favor ingresa tu DNI",
          txtDireccion: "Por favor ingresa tu direcci�n",
          txtTelefono: "Por favor ingresa tu tel�fono",
          txtNacimiento: "Por favor ingresa tu fecha de nacimiento",
          txtCorreo: "Por favor ingresa tu correo electr�nico",
          txtSalario: "Por favor ingresa el salario",
          txtJornada: "Por favor ingresa la jornada diaria",
          txtInicioContrato: "Por favor ingresa la fecha de inicio del contrato",
          txtFinContrato: "Por favor ingresa la fecha de fin del contrato"
        },
      	submitHandler : function(form) {
          	form.submit();
      }
    });
  });
</script>
</html>