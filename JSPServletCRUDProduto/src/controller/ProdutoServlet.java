package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dal.ProdutoDAO;
import model.Produto;

@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			Produto produto = new Produto();
			produto.setNome(request.getParameter("txtNome"));
			produto.setPreco(Double.parseDouble(request.getParameter("txtPreco")));
			produto.setQuantidade(Integer.parseInt(request.getParameter("txtQuantidade")));
			produto.setCategoria(request.getParameter("txCategoria"));
			ProdutoDAO.cadastrarProduto(produto);			
		}catch (NumberFormatException e) {
			response.sendRedirect("CadastrarProduto.jsp?mensagem=1");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
