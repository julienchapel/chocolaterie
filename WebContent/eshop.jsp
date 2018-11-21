<!-- Entête commune à toutes les pages/vues JSP. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Entête d'import de classe Java permettant d'importer la définition d'une classe pour l'utiliser dans la page. -->
<%@ page import="java.time.LocalDate"%>
<!-- Entête HTML 5 standard -->
<!DOCTYPE html>
<html>
<head>
<!-- Cette balise gère les méta-données de la page, 
	toute les caractéristiques propres à la page. -->
<meta charset="ISO-8859-1">
<title>Boutique</title>
</head>
<body>
	<h1>
		Hello world JSP :
		<!-- Le symbole '=' après '%' signifie : insérer le résultat de l'unique
			instruction Java dans le code HTML -->
		<%=LocalDate.now()%>
		<!-- la méthode now() donne un objet de type LocalDate, pour écrire cet objet 
			en que texte dans le HTML, toString() est appelé implicitement. -->
	</h1>
	<div>
		<!-- La syntaxe ci-dessous sert à déclarer que la suite du fichier doit 
			être interpété comme du code Java et non du code HTML. -->
		<%
			// A l'intérieur des '%' on est dans le langage Java.
			String test = "-------=========== SUPER CHAINE ===========----------";
			System.out.println(test);
		%>
		<!-- Le symbole ci-dessus correspond à déclarer la fin du bloc de code Java,
			on est de nouveau en HTML -->
	</div>
</body>
</html>