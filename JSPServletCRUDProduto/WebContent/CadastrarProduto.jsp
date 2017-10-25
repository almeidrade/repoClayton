<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
 	<%-- Comentário --%>
 	<% 
 		String parametro = request.getParameter("mensagem"); 
 		String mensagem = "";
 		if(parametro != null){
	 		if(parametro.equals("1")){
	 			mensagem = "Preço ou quantidade em formato incorreto";
	 		}
 		}
 	%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Cadastrar Produto</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" class="navbar-brand">JSP e Servlet</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="#">Cadastro</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<form class="form-horizontal" action="ProdutoServlet" method="get">
			<fieldset>
				<legend>Cadastrar Produto</legend>
				<div class="form-group">
					<label class="col-lg-2 control-label">Nome</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Nome do produto" name="txtNome">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Preço</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Preço do produto" name="txtPreco">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Quantidade</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Quantidade do produto" name="txtQuantidade">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Categoria</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Categoria do produto" name="txtCategoria">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<input type="submit" value="Cadastrar"
							class="btn btn-primary" name="btnCadastrarProduto"/>
					</div>
				</div>
				<div class="form-group">
					<label class="text-danger">
						<%= mensagem %>
					</label>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>








