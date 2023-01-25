<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	
	<title>Curso JSP</title>
	
<style type="text/css">
form{
 position: absolute;
 top: 33%;
 left: 33%;
 right: 33%;
}

h5{
 position: absolute;
 top: 25%;
 left: 33%;
 right: 33%;
}

.msg{
 position: absolute;
 top: 5%;
 left: 33%;
 right: 33%;
 font-size: 15px;
 color: rgb(234 134 143);
 background-color: rgb(44 11 14);
 border-color: #ffecb5;
}


</style>
	
</head>
<body>

<h5>Curso de JSP!</h5>


<form action="ServletsLogin" method="post" class="row g-3 needs-validation" novalidate>
<input type="hidden" value=<%request.getParameter("url");%> name="url">
<div class="mb-3">
	<label class="form-label">Login:</label>
	<input class="form-control" name="login" type="text" required="required">
	<div class="invalid-feedback">
      Informe o Login
    </div>
</div>
<div class="mb-3">	
	<label class="form-label">Senha:</label>
	<input class="form-control" name="senha" type="password" required="required">
	<div class="invalid-feedback">
	  Informe a Senha
	</div>
</div>
<div class="mb-3">
	<button type="submit" class="btn btn-primary">Entrar</button>
</div>
</form>

	<h6 class="msg">${msg}</h6>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<script type="text/javascript">
(() => {
	  'use strict'

	  const forms = document.querySelectorAll('.needs-validation')

	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()

</script>
</body>
</html>