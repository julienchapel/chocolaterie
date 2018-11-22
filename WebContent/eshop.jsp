<!-- Ent�te commune � toutes les pages/vues JSP. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Ent�te d'import de classe Java permettant d'importer la d�finition d'une classe pour l'utiliser dans la page. -->
<%@ page import="java.time.LocalDate"%>
<!-- Import de la librarie JSTL core -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Ent�te HTML 5 standard -->
<!DOCTYPE html>
<html>
<head>
<!-- Cette balise g�re les m�ta-donn�es de la page, 
	toute les caract�ristiques propres � la page. -->
<meta charset="ISO-8859-1">
<title>Boutique</title>
</head>
<body>
	<h1>
		Hello world JSP :
		<!-- Le symbole '=' apr�s '%' signifie : ins�rer le r�sultat de l'unique
			instruction Java dans le code HTML -->
		<%=LocalDate.now()%>
		<!-- la m�thode now() donne un objet de type LocalDate, pour �crire cet objet 
			en que texte dans le HTML, toString() est appel� implicitement. -->
	</h1>
	<div>
		<!-- La syntaxe ci-dessous sert � d�clarer que la suite du fichier doit 
			�tre interp�t� comme du code Java et non du code HTML. -->
		<%
			// A l'int�rieur des '%' on est dans le langage Java.
			String test = "-------=========== SUPER CHAINE ===========----------";
			System.out.println(test);
		%>
		<!-- Le symbole ci-dessus correspond � d�clarer la fin du bloc de code Java,
			on est de nouveau en HTML -->
	</div>
	
	<!-- Si l'attribut de requ�te 'message' est vide ou null, alors on affiche le 
		contenu de cette balise if. -->
	<c:if test="${ empty message }">
		<h2>Choisissez vos chocolats :</h2>
		<form method="post" action="">
			<div>
				<label for="name">Nom</label>
				<input id="name" name="name">
			</div>
			<div>
				<label for="address">Adresse</label>
				<input id="address" name="address">
			</div>
			<div>
				<label for="choco">Type de chocolats</label>
				<select id="choco" name="choco">
					<option label="----" value="" />
					<option label="Noir 70%" value="black-70" />
					<option label="Noir 88%" value="black-88" />
					<option label="Noir 90%" value="black-90" />
					<option label="Blanc" value="white" />
					<option label="Lait" value="milk" />
				</select>
			</div>
			<button>Commander</button>
		</form>
	</c:if>
	
	<c:if test="${ not empty message }">
		<div>
			${message}
		</div>
	</c:if>
</body>
</html>