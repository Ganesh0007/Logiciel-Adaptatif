

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Page d'administration</h1>

            <p class="lead">Ceci est la page d'administration!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Bonjour ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/j_spring_security_logout" />">Déconnexion</a>
            </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Inventaire</a>
        </h3>

        <p>Cette page permet de modifier, effacer et ajouter un produit.</p>

        <br><br>

        <h3>
            <a href="<c:url value="/admin/customer" />" >Client</a>
        </h3>

        <p>Informations client</p>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

