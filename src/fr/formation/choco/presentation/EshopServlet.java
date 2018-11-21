package fr.formation.choco.presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EshopServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// Le RequestDispatcher et le seul objet permettant d'utiliser une page
		// JSP : Compiler et éxécuter le code Java puis transformer le tout en
		// HTML/CSS.
		// C'est toujours le contexte de la servlet (ServletContext)
		// qui permet de constuire un objet RequestDispatcher pour une JSP
		// donnée (ici /eshop.jsp).
		this.getServletContext().getRequestDispatcher("/eshop.jsp").forward(req,
				resp);
	}
}
